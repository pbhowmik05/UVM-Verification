class mem_monitor extends uvm_monitor;
  `uvm_component_utils(mem_monitor)
  
  virtual mem_if vif;
  
  uvm_analysis_port #(mem_seq_item) item_collected_port;
  
  mem_seq_item trans_collected;
  
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
    trans_collected = new();
    item_collected_port = new("item_collected_port",this);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual mem_if)::get(this, "", "vif", vif)) begin
      `uvm_fatal("NOVIF",{"virtual interface must be set for: ",get_full_name(),".vif"});
    end
  endfunction
  
  virtual task run_phase(uvm_phase phase);
    
    item_collected_port.write(trans_collected);
  endtask
endclass
    
    
  