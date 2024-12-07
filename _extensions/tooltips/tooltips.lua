local function ensure_html_deps()
  quarto.doc.add_html_dependency({
    name = 'load_tooltips',
    version = '1.0.0',
    scripts = { "load_tooltips.js" }
  })
end

return {
  ['tooltips'] = function(args, kwargs, meta)
    if not quarto.doc.has_bootstrap() then
      return pandoc.Null()
    end
    ensure_html_deps()

    local tooltip = pandoc.utils.stringify(kwargs["tooltip"])
    local a_block =
        ' <a href="#" data-bs-toggle="tooltip" data-bs-title="' ..
        tooltip .. '"><i class="bi bi-info-circle"></i></i></a>'

    return pandoc.RawInline('html', a_block)
  end
}
