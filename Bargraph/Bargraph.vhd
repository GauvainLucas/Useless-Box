library ieee;
use ieee.std_logic_1164.all;										-- Pour les valeurs logiques UX01ZWLH-
use ieee.numeric_std.all;											-- Pour les opÃ©rateurs de bases +-*/<= not and or xor
use ieee.std_logic_unsigned.all;

entity Bargraph is											-- Nom du composant										
port(
							-- Déclaration des I/O
entree   :   in std_logic_vector (3 downto 0);		

sortie  :   out std_logic_vector (7 downto 0)
);

end Bargraph;


architecture arch_Bargraph of Bargraph is	-- Fonctionnement du composant
begin   
	-- variable i : integer range 0 to 511 := 0;   
	With entree select
		sortie	<=	"00000000" when "0000",
						"00000001" when "0001",
						"00000011" when "0010",
						"00000111" when "0011",
						"00001111" when "0100",
						"00011111" when "0101",
						"00111111" when "0110",
						"01111111" when "0111",
						"11111111" when "1000",
						"11111111" when others;
end arch_Bargraph;