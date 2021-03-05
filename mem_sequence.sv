class mem_sequence extends uvm_sequence#(mem_seq_item);
  `uvm_object_utils(mem_sequence)
  
  function new(string name = "mem_sequence");
    super.new(name);
  endfunction
  
  `uvm_declare_p_sequencer(mem_sequencer)
  
  
  virtual task body();
  endtask
  
endclass


  
class write_sequence extends uvm_sequence#(mem_seq_item);
  `uvm_object_utils(write_sequence)
  
  function new(string name = "write_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    
  endtask
endclass

class read_sequence extends uvm_sequence#(mem_seq_item);
  `uvm_object_utils(read_sequence)
  
  function new(string name = "read_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    
  endtask
endclass

class wr_rd_sequence extends uvm_sequence#(mem_seq_item);
  `uvm_object_utils(wr_rd_sequence)
  
  function new(string name = "wr_rd_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    
  endtask
endclass
  