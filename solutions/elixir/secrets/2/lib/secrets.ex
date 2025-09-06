defmodule Secrets do
  def secret_add(secret) do
    fn a -> 
    a + secret
    end
  end

  def secret_subtract(secret) do
    fn  s ->
    s - secret
    end
  end

  def secret_multiply(secret) do
    fn m ->
    m * secret
    end
  end

  def secret_divide(secret) do
    fn d ->
    div(d, secret)
    end
  end

  def secret_and(secret) do
    fn b ->
    Bitwise.band(secret, b)
    end
  end

  def secret_xor(secret) do
    fn xor ->
    Bitwise.bxor(secret, xor)
    end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn x ->
    x
    |> secret_function1.()
    |> secret_function2.()
    end
  end
end
