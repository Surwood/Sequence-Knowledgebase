# pressapps-knowledge-base
## Action Hooks
`pakb_archive_loop` - action for archive page inside the loop

`pakb_category_loop` - action for category page inside the loop

`pakb_search_loop` - action for search inside the loop

`pakb_single_loop` - action for single page inside the loop

## Conditional Tags
The conditional tags can be used in your template files to change what content is displayed on a particular page.
### Main KB Page
`is_pakb_main()` - When the main KB page is being displayed.

### Category KB Page
`is_pakb_category()` - When the category KB page is being displayed.

### Single KB Page
`is_pakb_single()` - When the single KB page is being displayed.

### Example
```
if( is_pakb_main() ) {
	// Main KB page
} elseif ( is_pakb_category() ) {
	// Category KB page
} elseif ( is_pakb_single() ) {
	// Single KB page
}
```