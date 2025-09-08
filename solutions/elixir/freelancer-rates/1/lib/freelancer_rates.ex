defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
     hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
         before_discount * (1 - discount / 100)
  end

  def monthly_rate(hourly_rate, discount) do
    hourly_rate * 8 * 22
    |> Kernel.*(1 - discount / 100)
    |> Float.ceil()
    |> trunc()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily_rate = hourly_rate * (1 - discount / 100) * 8
    days = budget / daily_rate
    Float.floor(days, 1)
  end
end
