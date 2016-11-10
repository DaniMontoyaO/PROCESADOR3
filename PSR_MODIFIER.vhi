
-- VHDL Instantiation Created from source file PSR_MODIFIER.vhd -- 18:22:35 11/01/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PSR_MODIFIER
	PORT(
		RST : IN std_logic;
		SALIDA_MUX_CRS2 : IN std_logic_vector(31 downto 0);
		CRS1 : IN std_logic_vector(31 downto 0);
		SALIDA_UC : IN std_logic_vector(5 downto 0);
		SALIDA_ALU : IN std_logic_vector(31 downto 0);          
		SALIDA_NZVC : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_PSR_MODIFIER: PSR_MODIFIER PORT MAP(
		RST => ,
		SALIDA_MUX_CRS2 => ,
		CRS1 => ,
		SALIDA_UC => ,
		SALIDA_ALU => ,
		SALIDA_NZVC => 
	);


