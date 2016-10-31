--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:49:20 04/25/2016
-- Design Name:   
-- Module Name:   D:/Biblioteca/Documents/Procesador/Procesador32/RFTB.vhd
-- Project Name:  Procesador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RF
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RFTB IS
END RFTB;
 
ARCHITECTURE behavior OF RFTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RF
    PORT(
         Rs1 : IN  std_logic_vector(4 downto 0);
         Rs2 : IN  std_logic_vector(4 downto 0);
         Rsd : IN  std_logic_vector(4 downto 0);
         datawrite : IN  std_logic_vector(31 downto 0);
         CRs1 : OUT  std_logic_vector(31 downto 0);
         CRs2 : OUT  std_logic_vector(31 downto 0);
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rsd : std_logic_vector(4 downto 0) := (others => '0');
   signal datawrite : std_logic_vector(31 downto 0) := (others => '0');
   signal rst : std_logic := '0';

 	--Outputs
   signal CRs1 : std_logic_vector(31 downto 0);
   signal CRs2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF PORT MAP (
          Rs1 => Rs1,
          Rs2 => Rs2,
          Rsd => Rsd,
          datawrite => datawrite,
          CRs1 => CRs1,
          CRs2 => CRs2,
          rst => rst
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 30 ns;	
		rst <= '1';
		wait for 30 ns;
		rst <= '0';
		Rs1 <= "10010";
		Rs2 <= "10011";
		Rsd <= "11000";
		datawrite <= "10010000000001000000000000000001";
		wait for 30 ns;
		Rs1 <="11000";
		Rsd <= "11100";
		datawrite <= "10010000000001000000001100000001";
		wait for 30 ns;
		Rs2 <= "11100";
		
		

      -- insert stimulus here 

      wait;
   end process;

END;
