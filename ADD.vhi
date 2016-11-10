
-- VHDL Instantiation Created from source file ADD.vhd -- 17:55:51 10/17/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ADD
	PORT(
		DIRECCION_A_PC : IN std_logic_vector(31 downto 0);
		ENTRADA_SUMADOR : IN std_logic_vector(31 downto 0);          
		SALIDA_A_NPC : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ADD: ADD PORT MAP(
		DIRECCION_A_PC => ,
		ENTRADA_SUMADOR => ,
		SALIDA_A_NPC => 
	);


