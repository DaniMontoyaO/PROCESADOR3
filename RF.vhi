
-- VHDL Instantiation Created from source file RF.vhd -- 18:13:32 10/17/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT RF
	PORT(
		RS1 : IN std_logic_vector(4 downto 0);
		RS2 : IN std_logic_vector(4 downto 0);
		DW : IN std_logic_vector(31 downto 0);
		RST : IN std_logic;
		RD : IN std_logic_vector(4 downto 0);          
		CRS1 : OUT std_logic_vector(31 downto 0);
		CRS2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_RF: RF PORT MAP(
		RS1 => ,
		RS2 => ,
		DW => ,
		RST => ,
		RD => ,
		CRS1 => ,
		CRS2 => 
	);


