dgs-framework
=============

/*
 * SEO links
 */

[.htaccess file]
Options +FollowSymlinks
RewriteEngine On
RewriteCond %{REQUEST_URI} !^/index.php
RewriteCond %{REQUEST_URI} !^/$
RewriteRule ^([^\.]+)$ %{DOCUMENT_ROOT}/index.php?page=$1 [NC,L]

[Database]

Table name: 'table_pages'
===========================================================================
page_id    page_status    page_seo_link   page_name        page_content
   1            1           home            Home           <html content>
   2            1           about-us        About Us       <html content>
   ...          ...         ...             ...            ...
===========================================================================

[SQL]

/* Get Page */
if (isset($_GET['page'])) {
    $getpage = $_GET['page'];
}
mysql_select_db($database_con_db, $con_db);
$query_getPage = sprintf("SELECT * FROM web_pages WHERE page_seo_link = %s", GetSQLValueString($getpage, "text"));
$getPage = mysql_query($query_getPage, $con_db) or die(mysql_error());
$row_getPage = mysql_fetch_assoc($getPage);
$totalRows_getPage = mysql_num_rows($getPage);

[php]

<a href="<?=$row_getPage['menu_seo_link'];?>"><?=$row_getPage['menu_name'];?></a>


/*
 * Ttitle
 */






