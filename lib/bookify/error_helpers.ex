defmodule Bookify.ErrorHelpers do
  use Phoenix.HTML

  import BookifyWeb.CoreComponents

  def error_tag(form, field) do
    if error = form.errors[field] do
      content_tag(:div, translate_error(error), class: "form-inline-error")
    end
  end
end
