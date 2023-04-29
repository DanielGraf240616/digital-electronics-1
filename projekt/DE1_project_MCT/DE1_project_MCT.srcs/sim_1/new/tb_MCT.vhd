----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.04.2023 02:52:41
-- Design Name: 
-- Module Name: tb_MorseCodeTransmitter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity tb_MorseCodeTransmitter is

end tb_MorseCodeTransmitter;

architecture testbench of tb_MorseCodeTransmitter is

    constant ClockFrequency : integer :=100e6;
    constant ClockPeriod    : time    := 1000 ms/ClockFrequency;
    
    signal clk     : std_logic := '1';
    signal bin     : std_logic_vector(4 downto 0) := "00000";
    signal rst     : std_logic := '0';
    signal morse   : std_logic;
   
begin
--uut
    uut_MorseCodeTransmitter : entity work.MorseCodeTransmitter
    generic map(
    ClockFrequency => ClockFrequency
    
    )
    port map(
    clk => clk,
    rst => rst,
    bin => bin,
    morse => morse
    );
--Clock
clk <= not clk after ClockPeriod/2;

--Simulation process
p_stimulus : process is 
begin
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

bin <="00000";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="00001";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="00010";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="00011";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="00100";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="00101";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="00110";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="01000";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="01001";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="01010";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="01011";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="01100";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="01101";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="01110";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="01111";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="10000";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="10001";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="10010";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="10011";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="10100";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="10101";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="10110";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="10111";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="11000";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="11001";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="11010";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="11011";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="11100";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="11001";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="11010";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50us;
bin <="11011";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="11100";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="11101";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';
 
wait for 50 us;
bin <="11110";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 50 us;
bin <="11111";
wait for 1 ns;
rst <='1';
wait for 1 ns;
rst <='0';

wait for 10 us;
rst <='1';
wait;
end process p_stimulus;

end testbench;
