library verilog;
use verilog.vl_types.all;
entity Bargraph is
    port(
        entree          : in     vl_logic_vector(3 downto 0);
        sortie          : out    vl_logic_vector(7 downto 0)
    );
end Bargraph;
