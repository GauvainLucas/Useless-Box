-- Ce composant génére un signal présentant un NLH pendant une période de H toutes les N périodes de H
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY DiviseurNGenerique IS 
generic(N:integer:=50);
PORT
	(
	H,CE:IN std_logic;
	Ts:out std_logic:='0'
	);
END ;
ARCHITECTURE a_DiviseurNGenerique OF DiviseurNGenerique IS
	signal etat:integer range 0 to N;
BEGIN
	PROCESS (H)
	BEGIN
		if (H'event and H='1') then
			case etat is
				when  0=>  
					Ts<='0';
					if CE='1' then etat<=1; end if;
			 	when N-1=>
			 		if CE='1' then 
			 			etat<=0;
			 			Ts<='1';
			 		end if;	
				when others =>
			 		if CE='1' then 
			 			etat<=etat+1;
			 		end if;
			end case;
		end IF;
	END PROCESS;
END;

