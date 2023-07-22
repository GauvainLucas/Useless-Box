library verilog;
use verilog.vl_types.all;
entity Bargraph_vlg_sample_tst is
    port(
        entree          : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Bargraph_vlg_sample_tst;
