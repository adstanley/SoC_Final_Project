library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm is
    generic (
        PWM_WIDTH : integer := 8
    );
    port (
        clk        : in  std_logic;
        rst        : in  std_logic;
        data_ready : in  std_logic;
        data       : in  std_logic_vector(31 downto 0);
        pwm_out    : out std_logic;
        pwm_ready  : out std_logic
    );
end pwm;

architecture Behavioral of pwm is
    constant SAMPLE_PERIOD : integer := 9000; -- 100,000,000 / 11khz sample = ~9000

    signal count : unsigned(PWM_WIDTH-1 downto 0); 
    signal duty_cycle_next : std_logic_vector(PWM_WIDTH-1 downto 0);
    signal duty_cycle_latched : std_logic_vector(PWM_WIDTH-1 downto 0);

    signal sample_timer : unsigned(15 downto 0);
    signal pwm_out_r    : std_logic;
    signal pwm_ready_r  : std_logic;
begin

    process(clk, rst)
    begin
        if (rst = '0') then
            count <= (others => '0');
            duty_cycle_next <= (others => '0');
            duty_cycle_latched <= (others => '0');
            sample_timer <= (others => '0');
            pwm_out_r <= '0';
            pwm_ready_r <= '0';
        elsif rising_edge(clk) then

            if count < unsigned(duty_cycle_latched) then
                pwm_out_r <= '1';
            else
                pwm_out_r <= '0';
            end if;


            if count = (2**PWM_WIDTH - 1) then
                count <= (others => '0');

                duty_cycle_latched <= duty_cycle_next;
            else
                count <= count + 1;
            end if;


            if sample_timer = SAMPLE_PERIOD - 1 then
                if (data_ready = '1') then
                    pwm_ready_r <= '1';
                    duty_cycle_next <= data(PWM_WIDTH-1 downto 0);
                else
                    pwm_ready_r <= '0';
                end if;
                sample_timer <= (others => '0');
            else
                sample_timer <= sample_timer + 1;
                pwm_ready_r <= '0';
            end if;
        end if;
    end process;

    pwm_out <= pwm_out_r;
    pwm_ready <= pwm_ready_r;

end Behavioral;
