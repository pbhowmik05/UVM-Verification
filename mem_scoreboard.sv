class mem_scoreboard extends uvm_scoreboard;
    `uvm_component_utils(mem_scoreboard)
  
  mem_seq_item pkt_qu[$];
  
  bit [7:0] sc_mem [4];
  
  uvm_analysis_imp#(mem_seq_item, mem_scoreboard) item_collected_export;
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    item_collected_export = new("item_collected_export", this);
    foreach (sc_mem[i]) sc_mem[i]=8'hFF;
  endfunction
  
  virtual function void write(mem_seq_item pkt);
    pkt_qu.push_back(pkt);
  endfunction
  
  
  virtual task run_phase(uvm_phase phase);
     `uvm_info(get_type_name(),"------------------------------------",UVM_LOW)

  endtask : run_phase
endclass


  
  
