library verilog;
use verilog.vl_types.all;
entity Servo_vlg_sample_tst is
    port(
        H               : in     vl_logic;
        Ton             : in     vl_logic_vector(10 downto 0);
        sampler_tx      : out    vl_logic
    );
end Servo_vlg_sample_tst;
