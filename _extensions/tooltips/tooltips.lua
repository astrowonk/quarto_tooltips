local function ensure_html_deps()
  quarto.doc.add_html_dependency({
    name = 'load_tooltips',
    version = '1.0.0',
    scripts = { { path = "load_tooltips.js", afterBody = true } }
  })
end

return {
  ['tooltips'] = function(args, kwargs, meta)
    if not quarto.doc.has_bootstrap() then
      return pandoc.Null()
    end
    ensure_html_deps()

    local tooltip = pandoc.utils.stringify(kwargs["tooltip"])
    local linktext = pandoc.utils.stringify(kwargs["text"])
    local icon = pandoc.utils.stringify(kwargs["icon"])
    if linktext ~= '' then
      thetext = linktext
    elseif icon ~= '' then
      thetext = '<i class="bi bi-' .. icon .. '"></i></i>'
    else
      thetext = '<i class="bi bi-info-circle"></i></i>'
    end
    local a_block =
        ' <a href="#" data-bs-toggle="tooltip" data-bs-title="' ..
        tooltip .. '">' .. thetext .. '</a>'

    return pandoc.RawInline('html', a_block)
  end
}
