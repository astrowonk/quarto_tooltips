# Bootstrap Tooltips Extension For Quarto

Easily add bootstrap tooltips to Quarto HTML documents.

## Installing

```bash
quarto add astrowonk/quarto_tooltips
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

The goal of this extension is to make it easy to include bootstrap tooltips. This is accomplished with:

```{shortcodes=false}
What is a tooltip? {{<tooltips tooltip="This is a tooltip" >}}
```

For now, the tool tip is always attached to a bootstrap info icon.

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).
