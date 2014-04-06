<?php 
    
/* 
 * Insert multiple na bd com imagensecho $error_no_jpg;
 */
for ($i = 0; $i < count($_FILES['---fileImg---']['name']) ; $i++){
	
	$filename = basename($_FILES['---fileImg---']['name'][$i]);
  $ext = substr($filename, strrpos($filename, '.') + 1);
	
	if (!empty($_FILES['---fileImg---']['name'][$i]) && ($ext == "jpg") && ($_FILES["---fileImg---"]["type"][$i] == "image/jpeg") && ($_FILES["uploaded_file"]["size"] < 5242880)){
      
			$today           = $dateNow;
      $source          = $_FILES["---fileImg---"]["tmp_name"][$i];
      $source_img_name = $_FILES['---fileImg---']['name'][$i]; 
      $folder          = $imgs_path_page_slider;
			$new_img_name    = str_replace(' ', '_', $source_img_name);
    	$new_img_name_no_ext = preg_replace('/\.[^.]*$/', '', $source_img_name);
			
      /* 
       * Final file names 
       */
      $extralarge_image_name = 'extralarge_'.$today.'_'.$new_img_name;
      $large_image_name      = 'large_'.$today.'_'.$new_img_name;
      $medium_image_name     = 'medium_'.$today.'_'.$new_img_name;
      $small_image_name      = 'small_'.$today.'_'.$new_img_name;
          
      /* 
       * Folder from files goes 
       */
      $target_extralargeImg = $folder.$extralarge_image_name; 
      $target_largeImg      = $folder.$large_image_name;
      $target_mediumImg     = $folder.$medium_image_name;
      $target_smallImg      = $folder.$small_image_name;
          
      /* 
       * Redimensionamento baseado na função 
       */
      $image = new SimpleImage(); 
      $image->load($source); 
      /* extralarge */
      $image->resizeToWidth($img_XL); 
      $image->save($target_extralargeImg);     
      /* large */   
      $image->resizeToWidth($img_L);   
      $image->save($target_largeImg); 
      /* medium */
      $image->resizeToWidth($img_M);   
      $image->save($target_mediumImg); 
      /* small */
      $image->resizeToWidth($img_S);   
      $image->save($target_smallImg); 
      /*--*/  

      /* 
       * Verifica se existe um custom name da img, se nao escreve a do ficheiro
       */
      if ($_POST['----img_name----']==''){ 
        $source_img_name = $new_img_name_no_ext;
      }else{  
        $source_img_name = $_POST['----img_name----'];
      };      

      /* 
       * Grava na base de dados
      
      <===== SQL GOES insert/update HERE ===== > 

       */
      
      echo ($sql_results) ? $save_success : $save_error;
      
			
    
	}else{ echo $error_no_jpg;}
};
  

/*---------------- 
 and insert 
----------------*/


?>
<input type="text" class="" name="----img_name----" required="required">
<input type="file" class="" name="---fileImg---[]" required="required">
