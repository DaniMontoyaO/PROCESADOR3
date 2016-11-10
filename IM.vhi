
-- VHDL Instantiation Created from source file IM.vhd -- 18:01:02 10/17/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT IM
	PORT(
		ENTRADA_PC : IN std_logic_vector(31 downto 0);
		RST : IN std_logic;          
		SALIDA_IM : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_IM: IM PORT MAP(
		ENTRADA_PC => ,
		RST => ,
		SALIDA_IM => 
	);


