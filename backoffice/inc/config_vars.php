<?php 
/***************** 
	GLOBALS 
******************/

$level_admin = $_SESSION['MM_UserGroup']==1;
$level_user  = $_SESSION['MM_UserGroup']==2;

$status_on   = '<span class="label label-success">online</span>';
$status_off  = '<span class="label label-danger">offline</span>';


$dateNow     = date("Ymd-His");
$formDateNow = date("Y-m-d H:i:s");

/// Notifications

$save_success = '
		<div class="col-sm-12">
		<div class="alert alert-success alert-dismissable">
		  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
		  <i class="fa fa-check-circle"></i> Gravação com sucesso!
		</div>
		</div>';

$save_error = '
		<div class="col-sm-12">
		<div class="alert alert-danger alert-dismissable">
		  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
		  <i class="fa fa-exclamation-circle"></i> Gravação sem sucesso!
		</div>
		</div>';

$error_no_jpg = '
		<div class="col-sm-12">
		<div class="alert alert-warning alert-dismissable" style="top:140px">
		  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
		  <i class="fa fa-exclamation-circle"></i> Seleccione uma imagem com a extenção em .jpg ou .jpeg e que seja abaixo de 5Mb!
		</div>
		</div>';

/// Path's
$path_imgs      = "../assets/imgs/";
$path_imgs_portfolio  = "../assets/imgs/portfolio/";

/***************** 
	FUNCTIONS 
******************/

/* 
 *	Resize Images 
 */

/// Define image size

$img_XL = '1880';
$img_L  = '1280';
$img_M  = '1024';
$img_S  = '480';

class SimpleImage {   
	var $image; 
	var $image_type; 

	  
	
	function load($filename) {
		$image_info = getimagesize($filename);
		$this->image_type = $image_info[2];
		
		if( $this->image_type == IMAGETYPE_JPEG ) {
			$this->image = imagecreatefromjpeg($filename);
		} elseif( $this->image_type == IMAGETYPE_GIF ) {	$this->image = imagecreatefromgif($filename);} 
		elseif( $this->image_type == IMAGETYPE_PNG ) {	$this->image = imagecreatefrompng($filename);}
	}

	function save($filename, $image_type=IMAGETYPE_JPEG, $compression=75, $permissions=644) {   
		if( $image_type == IMAGETYPE_JPEG ) { 
			imagejpeg($this->image,$filename,$compression); 
		} 
		elseif( $image_type == IMAGETYPE_GIF ) {   
			imagegif($this->image,$filename); 
		} 
		elseif( $image_type == IMAGETYPE_PNG ) {   
			imagepng($this->image,$filename); 
		} 
		if( $permissions != null) { chmod($filename,$permissions); } 
	} 

	function output($image_type=IMAGETYPE_JPEG) {   
		if( $image_type == IMAGETYPE_JPEG ) { 
				imagejpeg($this->image); 
			} 
		elseif( $image_type == IMAGETYPE_GIF ) {   
			imagegif($this->image); 
		} 
		elseif( $image_type == IMAGETYPE_PNG ) {   
			imagepng($this->image); 
		} 
	}

	function getWidth() {   
		return imagesx($this->image); 
	}
	
	function getHeight() { 
		return imagesy($this->image); 
	}

	function resizeToHeight($height) {   
		$ratio = $height / $this->getHeight(); 
		$width = $this->getWidth() * $ratio; 
		$this->resize($width,$height); 
	}
	
	function resizeToWidth($width) { 
		$ratio = $width / $this->getWidth(); 
		$height = $this->getheight() * $ratio; 
		$this->resize($width,$height); 
	}

	function scale($scale) { 
		$width = $this->getWidth() * $scale/100; 
		$height = $this->getheight() * $scale/100; 
		$this->resize($width,$height); 
	}

	function resize($width,$height) { 
		$new_image = imagecreatetruecolor($width, $height); 
		imagecopyresampled($new_image, $this->image, 0, 0, 0, 0, $width, $height, $this->getWidth(), $this->getHeight()
	); 
	
	$this->image = $new_image; 
	}   
} 
// And resize
// ----------
?>