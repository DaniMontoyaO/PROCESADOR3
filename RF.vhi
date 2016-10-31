
-- VHDL Instantiation Created from source file RF.vhd -- 23:35:58 04/25/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT RF
	PORT(
		Rs1 : IN std_logic_vector(4 downto 0);
		Rs2 : IN std_logic_vector(4 downto 0);
		Rsd : IN std_logic_vector(4 downto 0);
		datawrite : IN std_logic_vector(31 downto 0);
		rst : IN std_logic;          
		CRs1 : OUT std_logic_vector(31 downto 0);
		CRs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_RF: RF PORT MAP(
		Rs1 => ,
		Rs2 => ,
		Rsd => ,
		datawrite => ,
		CRs1 => ,
		CRs2 => ,
		rst => 
	);


