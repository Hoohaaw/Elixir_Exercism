defmodule Lasagna do
  # Please define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven() do
  minutes = 40
  end
  # Please define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(m) do
  minutes = 40
  minutes - m
  end
  # Please define the 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(l) do
  t = l * 2
  end
  # Please define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(l, m) do
  t = (l * 2 ) + m
  end
  # Please define the 'alarm/0' function
  def alarm() do
  r = "Ding!"
  end
end
