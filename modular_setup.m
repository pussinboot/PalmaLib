function [  ] = modular_setup( sys, gate_choice )
% setup the modular block properly
switch gate_choice
    case 'Gorch'
        replace([sys '/Subsystem/product_type'],[ sys '/Subsystem/unused/Gorch_range']);
        replace([sys '/Subsystem/Gate_type'],[ sys '/Subsystem/unused/Gorch_Gating']);
        
    case 'Oja'
        replace([sys '/Subsystem/product_type'],[ sys '/Subsystem/unused/simple_product']);
        replace([sys '/Subsystem/Gate_type'],[ sys '/Subsystem/unused/Oja_Gating']);

end
% Local replace function
function replace(oldblock,newblock)
pos = get_param(oldblock,'Position');
orient = get_param(oldblock,'Orientation');
delete_block(oldblock);
add_block(newblock,oldblock,'Position',pos,...
    'Orientation',orient);
end
end

