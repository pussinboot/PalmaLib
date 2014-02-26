% Network Creator
% Hopefully this will allow me to create a networked system of 'neurons'
simulink; %make sure simulink is running :)
%%
numNodesX = 5; %number of columns
numNodesY = 5; %number of rows
df = numNodesX*numNodesY-1;
nameNodes = {}; %create the names of the nodes
nameSpins = {};
nameVins = {};
nameCols = {};
for i = 1:numNodesX
    for j = 1:numNodesY
        nameNodes{i,j} = sprintf('N%i,%i',i,j);
        nameVins{i,j} = sprintf('Vins%i,%i',i,j);
        nameSpins{i,j} = sprintf('Spins%i,%i',i,j);
    end
    nameCols{i} = sprintf('Col%i',i);
end
sys = 'testModel'; % Model name
new_system(sys) % Create the model
open_system(sys) % Open the model
% spacing (not really important this is for looks)
x = 30;
y = 30;
w = 75; %size of block
h = 75;
offset = 150; %spacing between blocks
vc = 20;
% add a suitably large matrix concatenate to combine all the column
%vector concatenates
pos = [x+offset*(numNodesX) y+offset*(numNodesY) x+w+offset*(numNodesX) y+h+offset*(numNodesY)]; %block position
add_block('Simulink/Math Operations/Matrix Concatenate',[sys '/Mega Matrix'],'Position',pos,'NumInputs',num2str(numNodesX));
%and add a matrix viewer to it
%pos = pos + [offset 0 offset 0];
%add_block('PalmaLibs/1 Utils/Matrix Viewer',[sys '/Mega Matrix Viewer'],'Position',pos);
for i = 1:numNodesX
    %need to combine all of the spiking outputs per column into a vector
    pos = [x+offset*(i-1) y+offset*(numNodesY) x+w/3+offset*(i-1) y+h+offset*(numNodesY)];
    add_block('Simulink/Signal Routing/Vector Concatenate',[sys '/' nameCols{i}],'Position',pos,'NumInputs',num2str(numNodesY));
    %and connect them to the mega matrix
    add_line(sys,[nameCols{i} '/1'],[ 'Mega Matrix/' num2str(i)]);
    for j = 1:numNodesY
        pos = [x+offset*(i-1) y+offset*(j-1) x+w+offset*(i-1) y+h+offset*(j-1)]; %block position
        add_block('PalmaLibs/14 Leo Libs/N',[sys '/' nameNodes{i,j}],'Position',pos); %now add the block
        %every block needs two vector concats
        pos = [x+offset*(i-1)-vc y+offset*(j-1) x+offset*(i-1)-vc/2 y+h/3+offset*(j-1)];
        add_block('Simulink/Signal Routing/Vector Concatenate',[sys '/' nameVins{i,j}],'Position',pos,'NumInputs',num2str(df));
        %connect it
        add_line(sys,[nameVins{i,j} '/1'],[nameNodes{i,j} '/1']);
        pos = [x+offset*(i-1)-vc y+2/3*h+offset*(j-1) x+offset*(i-1)-vc/2 y+h+offset*(j-1)];
        add_block('Simulink/Signal Routing/Vector Concatenate',[sys '/' nameSpins{i,j}],'Position',pos,'NumInputs',num2str(df));
        %connect it
        add_line(sys,[nameSpins{i,j} '/1'],[nameNodes{i,j} '/2']);
        %now connect to the appropriate vector concatenate
        add_line(sys,[nameSpins{i,j} '/1'],[nameCols{i} '/' num2str(j)]);
    end
end

%now i need to connect the blocks

for i = 1:numNodesX %loop over columns
    for j = 1:numNodesY %loop over rows
        counter = 0;
        for k = 1:numNodesX
            for l = 1:numNodesY
                if(~(k == i && l == j))
                    counter = counter + 1;
                    %,'autorouting','on'
                    add_line(sys,[nameNodes{k,l} '/1'],[nameVins{i,j} '/' num2str(counter)]);
                    add_line(sys,[nameNodes{k,l} '/2'],[nameSpins{i,j} '/' num2str(counter)]);
                end
            end
        end
    end
end
