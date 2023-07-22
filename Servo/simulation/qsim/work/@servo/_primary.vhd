library verilog;
use verilog.vl_types.all;
entity Servo is
    port(
        H               : in     vl_logic;
        Ton             : in     vl_logic_vector(10 downto 0);
        PWM             : out    vl_logic
    );
end Servo;
