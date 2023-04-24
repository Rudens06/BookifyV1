defmodule Bookify.GenId do
  use Puid, chars: :alphanum, total: 1.0e5, risk: 1.0e12
end
