library verilog;
use verilog.vl_types.all;
entity Bargraph_vlg_check_tst is
    port(
        sortie          : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Bargraph_vlg_check_tst;
