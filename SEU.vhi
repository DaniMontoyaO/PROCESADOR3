
-- VHDL Instantiation Created from source file SEU.vhd -- 22:45:58 04/26/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SEU
	PORT(
		simm13 : IN std_logic_vector(12 downto 0);          
		seu32 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_SEU: SEU PORT MAP(
		simm13 => ,
		seu32 => 
	);


