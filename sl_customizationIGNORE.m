function [] = sl_customization( cm )
%SL_CUSTOMIZATION Summary of this function goes here
%   Detailed explanation goes here

    cm.LibraryBrowserCustomizer.applyFilter({'CompartmentsLib/ActiveCompartment','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CompartmentsLib/ActiveEndCompartment','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CompartmentsLib/PassiveCompartment','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CompartmentsLib/PassiveEndCompartment','Hidden'});
    
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/KAm_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/KAm_beta','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/KAh_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/KAh_beta','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/KMm_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/KMm_beta','Hidden'});
    
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/caLm_infin2','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/caLh_infin2','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/caNm_infin2','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/caNh_infin2','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/caPm_infin2','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/caPh_infin2','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/cam_tau2','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/cah_tau2','Hidden'});
        
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/caLm_infin','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/caLm_tau','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/caLh_infin','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/caLh_tau','Hidden'});
    
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/m_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/m2_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/m3_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/m4_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/m_beta','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/m2_beta','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/m3_beta','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/m4_beta','Hidden'});
    
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/h_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/h2_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/h3_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/h4_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/h_beta','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/h2_beta','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/h3_beta','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/h4_beta','Hidden'});
    
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/n_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/n2_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/n3_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/n4_alpha','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/n_beta','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/n2_beta','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/n3_beta','Hidden'});
    cm.LibraryBrowserCustomizer.applyFilter({'CurrentsLib/n4_beta','Hidden'});
end

