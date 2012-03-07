<div class="menu2">
      <?php 
 
$this->load->model('catalog/category');
$this->load->model('catalog/product');
 
$categories_1 = $this->model_catalog_category->getCategories(0);  											// get the categories
 
if ($categories_1) {$output = '<ul id="topnav2">';}  															// if there are categories available, start off with the unordered list tag
 
foreach ($categories_1 as $category_1) {																			// for each result
	$output .= '<li>';																					// put a list item tag																// get the id of this category
	$unrewritten  = $this->url->link('product/category', 'path=' . $category_1['category_id']);								// otherwise, it will be this one
	$output .= '<a href="'.($unrewritten).'">' . $category_1['name'] . '</a>';								// finally, generate the category name and wrap its link
 
	$categories_2 = $this->model_catalog_category->getCategories($category_1['category_id']);								// if this result has a sub-list, get the set of new categories
 
	if ($categories_2) {$output .= '<ul class="children">';}												// if this is a subresult, start off with an unordered list tag
 
	foreach ($categories_2 as $category_2) {																// for each of this subresult item
		$output .= '<li>';																				// put a list item tag													// get its category
		$sub_unrewritten = $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id']);
		$output .= '<a href="'.($sub_unrewritten).'">' . $category_2['name'] . '</a>';					// now, generate the category name and wrap its link
 		
		$categories_3 = $this->model_catalog_category->getCategories($category_2['category_id']);				// if this result has a sub-list, get the set of new categories
 
		if ($categories_3) {$output .= '<ul class="children2">';}									// if this is a subresult, start off with an unordered list tag
 
		foreach ($categories_3 as $category_3) {												// for each of this third level item
			$output .= '<li>';																			// give it an opening list tag											// get its category
			$third_sub_unrewritten = $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id'] . '_' . $category_3['category_id']);								// if its enabled, this will be the path
			$output .= '<a href="'.($third_sub_unrewritten).'">'.$category_3['name'].'</a>';		// call the category name and wrap with its link
			$output .= '</li>';																			// now close this list item
		}
 
		if ($categories_3) {$output .= '</ul>';}													// if this was the third list, clost the list
			$output .= '</li>';																			// then or otherwise, close the second level list tag
	}
	if ($categories_2) {$output .= '</ul>';}																// if all sub results have been listed, close the second level
		$output .= '</li>';																				// then or otherwise close first list parent
}
if ($categories_1) {$output .= '</ul>';}																		// then close the first level list table
echo $output; 																							// now produce the results
?>
    </div>