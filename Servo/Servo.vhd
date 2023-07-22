library ieee;
use ieee.std_logic_1164.all;										-- Pour les valeurs logiques UX01ZWLH-
use ieee.numeric_std.all;											-- Pour les opérateurs de bases +-*/<= not and or xor
use ieee.std_logic_unsigned.all;

entity Servo is																				
port(
H			:   in std_logic;								-- Déclaration des I/O
Ton		:   in std_logic_vector (10 downto 0) ;

PWM		:  out bit		-- PWM = 0 ou 1
);

end Servo;


architecture arch_Servo of Servo is	-- Fonctionnement du composant
begin   
	 process(H)
	 variable cpt : integer range 0 to 2000 := 0;   
	
	 begin
		  if rising_edge(H) then
				
				if cpt >= 1999 then
					cpt := 0;
				Else
					cpt:= cpt +1;
				end if;
				
				if cpt < Conv_integer(Ton) then
					PWM <= '1';
				Else
					PWM <= '0';
				end if;
		  end if;
	 end process;
end arch_Servo;