library ieee; 

use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 


entity clock_divider is 

	generic (
	
			CLK_FREQ_HZ : positive := 50_000_000;
			TICK_FREQ_HZ : positive := 1
	);

	port(

		clk  : in std_logic; 
		tick: out std_logic

	);

end clock_divider;


architecture behav of clock_divider is 

	constant COUNT_MAX : positive := CLK_FREQ_HZ/TICK_FREQ_HZ;
	signal count : integer range to COUNT_MAX -1 := 0; 
	
	begin 
	
		process(clk)
		
		begin 
		
			if rising_edge(clck) then 
			
				if count = COUNT_MAX -1 then 
			
					count <= 0; 
					tick <= '0'; 
				else
				
				count <= count +1; 
				end if; 
				
			end if; 
			
		end process; 
		
		
	end behav;
				



