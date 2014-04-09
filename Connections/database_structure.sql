-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09-Abr-2014 às 17:54
-- Versão do servidor: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wstemp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_autentication`
--

CREATE TABLE IF NOT EXISTS `adm_autentication` (
  `autentication_id` int(11) NOT NULL AUTO_INCREMENT,
  `autentication_user_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active / desactive user',
  `autentication_user_email` varchar(255) DEFAULT NULL,
  `autentication_user_password` varchar(255) DEFAULT NULL COMMENT 'md5 encript',
  `autentication_user_levelAccess` tinyint(1) DEFAULT NULL,
  `autentication_user_loginDate` datetime DEFAULT NULL,
  PRIMARY KEY (`autentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_webconfig`
--

CREATE TABLE IF NOT EXISTS `adm_webconfig` (
  `webconfig_id` int(11) NOT NULL AUTO_INCREMENT,
  `webconfig_status` tinyint(1) NOT NULL DEFAULT '1',
  `webconfig_name` varchar(100) DEFAULT NULL,
  `webconfig_desc` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`webconfig_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_errors`
--

CREATE TABLE IF NOT EXISTS `ws_errors` (
  `error_id` int(11) NOT NULL AUTO_INCREMENT,
  `error_code` int(3) DEFAULT NULL,
  `error_name` varchar(100) DEFAULT NULL,
  `error_content` text,
  PRIMARY KEY (`error_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Extraindo dados da tabela `ws_errors`
--

INSERT INTO `ws_errors` (`error_id`, `error_code`, `error_name`, `error_content`) VALUES
(1, 100, 'Continue', 'Confirms the client about the arrival of the first part of the request and informs to continue with the rest of the request or ignore if the request has been fulfilled'),
(2, 101, 'Switching Protocols', 'Informs the client about the server switching the protocols to that specified in the Upgrade message header field during the current connection.'),
(3, 200, 'OK', 'Standard response for successful requests'),
(4, 201, 'Created', 'Request fulfilled and new resource created'),
(5, 202, 'Accepted', 'Request accepted, but not yet processed'),
(6, 203, 'Non-Authoritative Information', 'Returned meta information was not the definitive set from the origin server.'),
(7, 204, 'No Content', 'Request succeeded without requiring the return of an entity-body'),
(8, 205, 'Reset Content', 'Request succeeded but require resetting of the document view that caused the request'),
(9, 206, 'Partial Content', 'Partial GET request was successful'),
(10, 300, 'Multiple Choices', 'Requested resource has multiple choices at different locations.'),
(11, 301, 'Moved Permanently', 'Resource permanently moved to a different URL.'),
(12, 302, 'Found', 'Requested resource was found under a different URL but the client should continue to use the original URL.'),
(13, 303, 'See Other', 'Requested response is at a different URL and can be accessed only through a GET command.'),
(14, 304, 'Not Modified', 'Resource not modified since the last request.'),
(15, 305, 'Use Proxy', 'Requested resource should be accessed through the proxy specified in the location field.'),
(16, 306, 'No Longer Used', 'Reserved for future use'),
(17, 307, 'Temporary Redirect', 'Resource has been moved temporarily to a different URL.'),
(18, 400, 'Bad Request', 'Syntax of the request not understood by the server.'),
(19, 401, 'Not Authorized', 'Request requires user authentication'),
(20, 402, 'Payment Required', 'Reserved for future use.'),
(21, 403, 'Forbidden', 'Server refuses to fulfill the request.'),
(22, 404, 'Not Found', 'Document or file requested by the client was not found.'),
(23, 405, 'Method Not Allowed', 'Method specified in the Request-Line was not allowed for the specified resource.'),
(24, 406, 'Not Acceptable', 'Resource requested generates response entities that has content characteristics not specified in the accept headers.'),
(25, 407, 'Proxy Authentication Required', 'Request requires the authentication with the proxy.'),
(26, 408, 'Request Timeout', 'Client fails to send a request in the time allowed by the server.'),
(27, 409, 'Conflict', 'Request was unsuccessful due to a conflict in the state of the resource.'),
(28, 410, 'Gone', 'Resource requested is no longer available with no forwarding address'),
(29, 411, 'Length Required', 'Server doesn’t accept the request without a valid Content-Length header field.'),
(30, 412, 'Precondition Failed', 'Precondition specified in the Request-Header field returns false.'),
(31, 413, 'Request Entity Too Large', 'Request unsuccessful as the request entity is larger than that allowed by the server'),
(32, 414, 'Request URL Too Long', 'Request unsuccessful as the URL specified is longer than the one, the server is willing to process.'),
(33, 415, 'Unsupported Media Type', 'Request unsuccessful as the entity of the request is in a format not supported by the requested resource'),
(34, 416, 'Requested Range Not Satisfiable', 'Request included a Range request-header field without any range-specifier value'),
(35, 417, 'Expectation Failed', 'Expectation given in the Expect request-header was not fulfilled by the server.'),
(36, 422, 'Unprocessable Entity', 'Request well-formed but unable to process because of semantic errors'),
(37, 423, 'Locked', 'Resource accessed was locked'),
(38, 424, 'Failed Dependency', 'Request failed because of the failure of a previous request'),
(39, 426, 'Upgrade Required', 'Client should switch to Transport Layer Security'),
(40, 500, 'Internal Server Error', 'Request unsuccessful because of an unexpected condition encountered by the server.'),
(41, 501, 'Not Implemented', 'Request unsuccessful as the server could not support the functionality needed to fulfill the request.'),
(42, 502, 'Bad Gateway', 'Server received an invalid response from the upstream server while trying to fulfill the request.'),
(43, 503, 'Service Unavailable', 'Request unsuccessful to the server being down or overloaded.'),
(44, 504, 'Gateway Timeout', 'Upstream server failed to send a request in the time allowed by the server.'),
(45, 505, 'HTTP Version Not Supported', 'Server does not support the HTTP version specified in the request.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_mainmenu`
--

CREATE TABLE IF NOT EXISTS `ws_mainmenu` (
  `mainmenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `mainmenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `mainmenu_seo_link` varchar(100) DEFAULT NULL,
  `mainmenu_name` varchar(100) DEFAULT NULL,
  `mainmenu_desc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mainmenu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_pages`
--

CREATE TABLE IF NOT EXISTS `ws_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'visible / hidden page',
  `page_seo_link` varchar(100) DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `page_content` text,
  `page_update` datetime DEFAULT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_portfolio`
--

CREATE TABLE IF NOT EXISTS `ws_portfolio` (
  `portfolio_id` int(11) NOT NULL AUTO_INCREMENT,
  `portfolio_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'visible / hidden',
  `portfolio_seo_link` varchar(100) DEFAULT NULL,
  `portfolio_ref` varchar(0) DEFAULT NULL,
  `portfolio_name` varchar(100) DEFAULT NULL,
  `portfolio_desc` text,
  `portfolio_thumbnail` varchar(100) DEFAULT NULL,
  `portfolio_addDate` datetime DEFAULT NULL,
  `portfolio_updateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`portfolio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_portfolio_category`
--

CREATE TABLE IF NOT EXISTS `ws_portfolio_category` (
  `portfolio_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `portfolio_category_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'visible / hidden',
  `portfolio_category_seo_link` varchar(100) DEFAULT NULL,
  `portfolio_category_name` varchar(100) DEFAULT NULL,
  `portfolio_category_desc` varchar(300) DEFAULT NULL,
  `portfolio_category_addDate` datetime DEFAULT NULL,
  `portfolio_category_updateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`portfolio_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_portfolio_images`
--

CREATE TABLE IF NOT EXISTS `ws_portfolio_images` (
  `portfolio_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `portfolio_image_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'visible / hidden',
  `portfolio_image_name` varchar(100) DEFAULT NULL,
  `portfolio_image_desc` varchar(300) DEFAULT NULL,
  `portfolio_image_XL` varchar(100) DEFAULT NULL,
  `portfolio_image_L` varchar(100) DEFAULT NULL,
  `portfolio_image_M` varchar(100) DEFAULT NULL,
  `portfolio_image_S` varchar(100) DEFAULT NULL,
  `portfolio_image_addDate` datetime DEFAULT NULL,
  `portfolio_image_updateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`portfolio_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_setup`
--

CREATE TABLE IF NOT EXISTS `ws_setup` (
  `setup_id` int(11) NOT NULL AUTO_INCREMENT,
  `setup_status` tinyint(1) NOT NULL DEFAULT '1',
  `setup_name` varchar(100) DEFAULT NULL,
  `setup_content` text,
  PRIMARY KEY (`setup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `ws_setup`
--

INSERT INTO `ws_setup` (`setup_id`, `setup_status`, `setup_name`, `setup_content`) VALUES
(1, 1, 'site name', 'WebSite Name'),
(2, 1, 'meta', '<meta charset="utf-8">\r\n<meta http-equiv="X-UA-Compatible" content="IE=edge">\r\n<meta name="viewport" content="width=device-width, initial-scale=1">'),
(3, 1, 'css links', '<!-- CSS -->\r\n<link href="css/bootstrap.min.css" rel="stylesheet">'),
(4, 1, 'js links', '<!-- JS -->\r\n<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>\r\n<script src="js/bootstrap.min.js"></script>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
