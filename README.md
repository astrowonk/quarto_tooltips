# Bootstrap Tooltips Extension For Quarto

Easily add bootstrap tooltips to Quarto HTML documents.

## Installation

```bash
quarto add astrowonk/quarto_tooltips
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Usage

The goal of this extension is to make it easy to include bootstrap tooltips. This is accomplished with:

```{shortcodes=false}
What is a tooltip? {{<tooltips tooltip="This is a tooltip" >}}
```


<img width="247" alt="Screenshot 2024-12-07 at 12 59 03 PM" src="https://github.com/user-attachments/assets/a158bb29-f6c6-4aa8-93cd-0f210da41a1a">

You can also have the link on text:

```{shortcodes=false}
This is a tooltip on {{<tooltips tooltip="This is a tooltip on text." text='some text'>}}.
```

or change to a different bootstrap icon:

```{shortcodes=false}

There will be a tooltip on this info-square icon: {{<tooltips tooltip="This is a tooltip on info-square" icon='info-square'>}}.

```

## Example

Here is the source code for a quarto file that renders all of the above examples: [example.qmd](example.qmd).
