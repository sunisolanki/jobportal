SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `pp_ad_codes`
-- ----------------------------
DROP TABLE IF EXISTS `pp_ad_codes`;
CREATE TABLE `pp_ad_codes` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `bottom` text,
  `right_side_1` text,
  `right_side_2` text,
  `google_analytics` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_ad_codes`
-- ----------------------------
BEGIN;
INSERT INTO `pp_ad_codes` VALUES ('1', '<a href=\"#\"><img src=\"http://codeareena.com/jobportal/public/images/ad728.png\" /></a>', '<a href=\"#\"><img src=\"http://codeareena.com/jobportal/public/images/banner160x600.jpg\" /></a>', '<a href=\"#\"><img src=\"http://codeareena.com/jobportal/public/images/ad160x600.jpg\" /></a>', '');
COMMIT;

-- ----------------------------
--  Table structure for `pp_admin`
-- ----------------------------
DROP TABLE IF EXISTS `pp_admin`;
CREATE TABLE `pp_admin` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(80) DEFAULT NULL,
  `admin_password` varchar(100) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_admin`
-- ----------------------------
BEGIN;
INSERT INTO `pp_admin` VALUES ('1', 'demo', 'demo123456', null);
COMMIT;

-- ----------------------------
--  Table structure for `pp_cities`
-- ----------------------------
DROP TABLE IF EXISTS `pp_cities`;
CREATE TABLE `pp_cities` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `show` tinyint(1) NOT NULL DEFAULT '1',
  `city_slug` varchar(150) NOT NULL,
  `city_name` varchar(150) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '998',
  `country_ID` int(11) NOT NULL,
  `is_popular` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_cities`
-- ----------------------------
BEGIN;
INSERT INTO `pp_cities` VALUES ('1', '1', '', 'New York', '998', '0', ''), ('2', '1', '', 'Dubai', '998', '0', ''), ('3', '1', '', 'Hong Kong', '998', '0', ''), ('4', '1', '', 'Islamabad', '998', '0', ''), ('5', '1', '', 'Lahore', '998', '0', ''), ('6', '1', '', 'California', '998', '0', ''), ('7', '1', '', 'Abu Dhabi', '998', '0', ''), ('8', '1', '', 'Sydney', '998', '0', ''), ('9', '1', '', 'Los Angeles', '998', '0', ''), ('10', '1', '', 'Chicago', '998', '0', ''), ('11', '1', '', 'Houston', '998', '0', ''), ('12', '1', '', 'San Diego', '998', '0', ''), ('13', '1', '', 'San Jose', '998', '0', ''), ('14', '1', '', 'Austin', '998', '0', ''), ('15', '1', '', 'San Francisco', '998', '0', ''), ('16', '1', '', 'Columbus', '998', '0', ''), ('17', '1', '', 'Boston', '998', '0', ''), ('18', '1', '', 'Washington', '998', '0', ''), ('19', '1', '', 'Las Vegas', '998', '0', '');
COMMIT;

-- ----------------------------
--  Table structure for `pp_cms`
-- ----------------------------
DROP TABLE IF EXISTS `pp_cms`;
CREATE TABLE `pp_cms` (
  `pageID` int(11) NOT NULL AUTO_INCREMENT,
  `pageTitle` varchar(100) DEFAULT NULL,
  `pageSlug` varchar(100) DEFAULT NULL,
  `pageContent` text,
  `pageImage` varchar(100) DEFAULT NULL,
  `pageParentPageID` int(11) DEFAULT '0',
  `dated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `pageStatus` enum('Inactive','Published') DEFAULT 'Inactive',
  `seoMetaTitle` varchar(100) DEFAULT NULL,
  `seoMetaKeyword` varchar(255) DEFAULT NULL,
  `seoMetaDescription` varchar(255) DEFAULT NULL,
  `seoAllowCrawler` tinyint(1) DEFAULT '1',
  `pageCss` text,
  `pageScript` text,
  `menuTop` tinyint(4) DEFAULT '0',
  `menuBottom` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`pageID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_cms`
-- ----------------------------
BEGIN;
INSERT INTO `pp_cms` VALUES ('7', 'About Us', 'about-us.html', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.<br />\n<br />\nAliquam imperdiet cursus felis, sed posuere nunc. In sollicitudin accumsan orci, eu aliquet lectus tempus nec. Fusce facilisis metus a diam dignissim tristique. Fusce id ligula lectus. In tempor ut purus vel pharetra. Quisque ultrices justo id lectus tristique finibus. Praesent facilisis velit eu elementum tempus. In vel lectus congue, ultricies orci congue, imperdiet massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin, magna ultricies vulputate feugiat, tortor arcu dignissim urna, vitae porta sem justo ut enim. Donec ullamcorper tellus vel fringilla varius. In nec felis quam. Quisque ut nunc non dui bibendum tristique quis accumsan libero.<br />\n<br />\nNunc finibus nisi id nisi scelerisque eleifend. Sed vulputate finibus vestibulum. Nulla facilisi. Etiam convallis leo nisl, et hendrerit ligula ornare ut. Nunc et enim ultrices, vehicula dui sit amet, fringilla tellus. Quisque eu elit lorem. Nunc hendrerit orci ut ex molestie, eget semper lorem cursus. Proin congue consectetur felis et cursus. Sed aliquam nunc nec odio ultricies, eget aliquet nisl porta. Phasellus consequat eleifend enim. Donec in tincidunt diam, id mattis nulla. Cras in luctus arcu, eu efficitur mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In tincidunt sapien libero, sit amet convallis tortor sollicitudin non. Sed id nulla ac nulla volutpat vehicula. Morbi lacus nunc, tristique rutrum molestie vel, tincidunt ut lectus.<br />\nAliquam imperdiet cursus<br />\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.<br />\n<br />\nAliquam imperdiet cursus felis, sed posuere nunc. In sollicitudin accumsan orci, eu aliquet lectus tempus nec. Fusce facilisis metus a diam dignissim tristique. Fusce id ligula lectus. In tempor ut purus vel pharetra. Quisque ultrices justo id lectus tristique finibus. Praesent facilisis velit eu elementum tempus. In vel lectus congue, ultricies orci congue, imperdiet massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin, magna ultricies vulputate feugiat, tortor arcu dignissim urna, vitae porta sem justo ut enim. Donec ullamcorper tellus vel fringilla varius. In nec felis quam. Quisque ut nunc non dui bibendum tristique quis accumsan libero.<br />\n<br />\nNunc finibus nisi id nisi scelerisque eleifend. Sed vulputate finibus vestibulum. Nulla facilisi. Etiam convallis leo nisl, et hendrerit ligula ornare ut. Nunc et enim ultrices, vehicula dui sit amet, fringilla tellus. Quisque eu elit lorem. Nunc hendrerit orci ut ex molestie, eget semper lorem cursus. Proin congue consectetur felis et cursus. Sed aliquam nunc nec odio ultricies, eget aliquet nisl porta. Phasellus consequat eleifend enim. Donec in tincidunt diam, id mattis nulla. Cras in luctus arcu, eu efficitur mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In tincidunt sapien libero, sit amet convallis tortor sollicitudin non. Sed id nulla ac nulla volutpat vehicula. Morbi lacus nunc, tristique rutrum molestie vel, tincidunt ut lectus.<br />\nSuspendisse quis mi commodo, eleifend massa ut, dapibus ligula.<br />\nMaecenas sagittis sem sed sapien blandit venenatis.<br />\nPraesent eleifend ligula id ex condimentum, eu finibus lorem hendrerit.<br />\nVestibulum consequat nunc a elit faucibus lacinia.<br />\nProin quis libero eget lorem vulputate imperdiet.<br />\nVivamus iaculis arcu eget libero imperdiet, sit amet posuere ante consectetur.', 'about-company1.jpg', '0', '2016-11-26 23:33:43', 'Published', 'About Us', 'About Job Portal, Jobs, IT', 'The leading online job portal', '1', null, null, '1', '1'), ('13', 'How To Get Job', 'how-to-get-job.html', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.<br />\n<br />\nAliquam imperdiet cursus felis, sed posuere nunc. In sollicitudin accumsan orci, eu aliquet lectus tempus nec. Fusce facilisis metus a diam dignissim tristique. Fusce id ligula lectus. In tempor ut purus vel pharetra. Quisque ultrices justo id lectus tristique finibus. Praesent facilisis velit eu elementum tempus. In vel lectus congue, ultricies orci congue, imperdiet massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin, magna ultricies vulputate feugiat, tortor arcu dignissim urna, vitae porta sem justo ut enim. Donec ullamcorper tellus vel fringilla varius. In nec felis quam. Quisque ut nunc non dui bibendum tristique quis accumsan libero.<br />\n<br />\nNunc finibus nisi id nisi scelerisque eleifend. Sed vulputate finibus vestibulum. Nulla facilisi. Etiam convallis leo nisl, et hendrerit ligula ornare ut. Nunc et enim ultrices, vehicula dui sit amet, fringilla tellus. Quisque eu elit lorem. Nunc hendrerit orci ut ex molestie, eget semper lorem cursus. Proin congue consectetur felis et cursus. Sed aliquam nunc nec odio ultricies, eget aliquet nisl porta. Phasellus consequat eleifend enim. Donec in tincidunt diam, id mattis nulla. Cras in luctus arcu, eu efficitur mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In tincidunt sapien libero, sit amet convallis tortor sollicitudin non. Sed id nulla ac nulla volutpat vehicula. Morbi lacus nunc, tristique rutrum molestie vel, tincidunt ut lectus.<br />\nAliquam imperdiet cursus<br />\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', null, '0', '2016-11-26 23:39:56', 'Published', 'How To Get Job', 'Tips, Job, Online', 'How to get job includes tips and tricks to crack interview', '1', null, null, '0', '0'), ('14', 'Interview', 'interview.html', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.<br />\n<br />\nAliquam imperdiet cursus felis, sed posuere nunc. In sollicitudin accumsan orci, eu aliquet lectus tempus nec. Fusce facilisis metus a diam dignissim tristique. Fusce id ligula lectus. In tempor ut purus vel pharetra. Quisque ultrices justo id lectus tristique finibus. Praesent facilisis velit eu elementum tempus. In vel lectus congue, ultricies orci congue, imperdiet massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin, magna ultricies vulputate feugiat, tortor arcu dignissim urna, vitae porta sem justo ut enim. Donec ullamcorper tellus vel fringilla varius. In nec felis quam. Quisque ut nunc non dui bibendum tristique quis accumsan libero.<br />\n<br />\nNunc finibus nisi id nisi scelerisque eleifend. Sed vulputate finibus vestibulum. Nulla facilisi. Etiam convallis leo nisl, et hendrerit ligula ornare ut. Nunc et enim ultrices, vehicula dui sit amet, fringilla tellus. Quisque eu elit lorem. Nunc hendrerit orci ut ex molestie, eget semper lorem cursus. Proin congue consectetur felis et cursus. Sed aliquam nunc nec odio ultricies, eget aliquet nisl porta. Phasellus consequat eleifend enim. Donec in tincidunt diam, id mattis nulla. Cras in luctus arcu, eu efficitur mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In tincidunt sapien libero, sit amet convallis tortor sollicitudin non. Sed id nulla ac nulla volutpat vehicula. Morbi lacus nunc, tristique rutrum molestie vel, tincidunt ut lectus.<br />\nAliquam imperdiet cursus<br />\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', null, '0', '2016-11-26 23:42:22', 'Published', 'Interview', 'job, jobs, interview, tips', 'How to take interview', '1', null, null, '0', '0'), ('15', 'CV Writing', 'cv-writing.html', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.<br />\n<br />\nAliquam imperdiet cursus felis, sed posuere nunc. In sollicitudin accumsan orci, eu aliquet lectus tempus nec. Fusce facilisis metus a diam dignissim tristique. Fusce id ligula lectus. In tempor ut purus vel pharetra. Quisque ultrices justo id lectus tristique finibus. Praesent facilisis velit eu elementum tempus. In vel lectus congue, ultricies orci congue, imperdiet massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin, magna ultricies vulputate feugiat, tortor arcu dignissim urna, vitae porta sem justo ut enim. Donec ullamcorper tellus vel fringilla varius. In nec felis quam. Quisque ut nunc non dui bibendum tristique quis accumsan libero.<br />\n<br />\nNunc finibus nisi id nisi scelerisque eleifend. Sed vulputate finibus vestibulum. Nulla facilisi. Etiam convallis leo nisl, et hendrerit ligula ornare ut. Nunc et enim ultrices, vehicula dui sit amet, fringilla tellus. Quisque eu elit lorem. Nunc hendrerit orci ut ex molestie, eget semper lorem cursus. Proin congue consectetur felis et cursus. Sed aliquam nunc nec odio ultricies, eget aliquet nisl porta. Phasellus consequat eleifend enim. Donec in tincidunt diam, id mattis nulla. Cras in luctus arcu, eu efficitur mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In tincidunt sapien libero, sit amet convallis tortor sollicitudin non. Sed id nulla ac nulla volutpat vehicula. Morbi lacus nunc, tristique rutrum molestie vel, tincidunt ut lectus.<br />\nAliquam imperdiet cursus<br />\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', null, '0', '2016-11-26 23:44:04', 'Published', 'CV writing tips and tricks', 'CV, resume', 'How to write a professional CV.', '1', null, null, '0', '0'), ('16', 'Privacy Policy', 'privacy-policy.html', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.<br />\n<br />\nAliquam imperdiet cursus felis, sed posuere nunc. In sollicitudin accumsan orci, eu aliquet lectus tempus nec. Fusce facilisis metus a diam dignissim tristique. Fusce id ligula lectus. In tempor ut purus vel pharetra. Quisque ultrices justo id lectus tristique finibus. Praesent facilisis velit eu elementum tempus. In vel lectus congue, ultricies orci congue, imperdiet massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin, magna ultricies vulputate feugiat, tortor arcu dignissim urna, vitae porta sem justo ut enim. Donec ullamcorper tellus vel fringilla varius. In nec felis quam. Quisque ut nunc non dui bibendum tristique quis accumsan libero.<br />\n<br />\nNunc finibus nisi id nisi scelerisque eleifend. Sed vulputate finibus vestibulum. Nulla facilisi. Etiam convallis leo nisl, et hendrerit ligula ornare ut. Nunc et enim ultrices, vehicula dui sit amet, fringilla tellus. Quisque eu elit lorem. Nunc hendrerit orci ut ex molestie, eget semper lorem cursus. Proin congue consectetur felis et cursus. Sed aliquam nunc nec odio ultricies, eget aliquet nisl porta. Phasellus consequat eleifend enim. Donec in tincidunt diam, id mattis nulla. Cras in luctus arcu, eu efficitur mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In tincidunt sapien libero, sit amet convallis tortor sollicitudin non. Sed id nulla ac nulla volutpat vehicula. Morbi lacus nunc, tristique rutrum molestie vel, tincidunt ut lectus.<br />\nAliquam imperdiet cursus<br />\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', null, '0', '2016-11-26 15:12:48', 'Published', 'Privacy Policy', 'Privacy, policies', 'Job portal privacy policies', '1', null, null, '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `pp_cms_previous`
-- ----------------------------
DROP TABLE IF EXISTS `pp_cms_previous`;
CREATE TABLE `pp_cms_previous` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(60) DEFAULT NULL,
  `heading` varchar(155) DEFAULT NULL,
  `content` text,
  `page_slug` varchar(100) DEFAULT NULL,
  `sts` enum('blocked','active') DEFAULT 'active',
  `dated` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_cms_previous`
-- ----------------------------
BEGIN;
INSERT INTO `pp_cms_previous` VALUES ('4', null, 'About Us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.\n<br /><br />\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.\n<br /><br />\nNullam enim ex, vulputate at ultricies bibendum, interdum sit amet tortor. Fusce semper augue ac ipsum ultricies interdum. Cras maximus faucibus sapien, et lacinia leo efficitur id. Nullam laoreet pulvinar nibh et ullamcorper. Etiam a lorem rhoncus, rutrum felis sed, blandit orci. Nulla vel tellus gravida, pretium neque a, fringilla lectus. Morbi et leo mi. Aliquam interdum ex ipsum. Vivamus eu ultrices ante, eget volutpat massa. Nulla nisi purus, sollicitudin euismod eleifend pulvinar, dictum rutrum lacus. Nam hendrerit sed arcu a pellentesque. Vestibulum maximus ligula tellus, a euismod dui feugiat et. Aliquam viverra blandit est nec ultricies.\n<br /><br />\nNullam et sem a dui accumsan ornare. Praesent faucibus ultricies orci. Maecenas hendrerit tincidunt rutrum. Phasellus eget libero eget ante interdum venenatis. Cras sodales finibus vulputate. Aenean aliquet velit eget felis pellentesque, et blandit ex facilisis. Vivamus sit amet euismod diam, at rhoncus ex. Nullam consectetur, erat ut maximus dignissim, ex eros pellentesque ex, at dictum odio dui in urna. Nulla rutrum nisi eget risus accumsan, sit amet iaculis risus interdum. Curabitur accumsan eu purus nec condimentum. Fusce pulvinar ex id sagittis sodales. Donec hendrerit scelerisque est, in viverra nibh lobortis et.\n<br /><br />\n<ul>\n<li>Quisque facilisis purus vel sem laoreet posuere.</li>\n<li>Proin eleifend velit ut elit sollicitudin scelerisque.</li>\n<li>Nulla aliquet urna in magna congue, ac hendrerit velit lacinia.</li>\n<li>Aliquam id urna ut lorem porta vulputate.</li>\n<li>Sed ultrices sem quis risus tincidunt, ut lacinia nunc aliquet.</li>\n<li>Phasellus in est suscipit, feugiat tortor ac, iaculis enim.</li>\n</ul>', 'about_us.html', 'active', '2014-05-16 13:47:11'), ('12', null, 'First Day of New Job', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n&nbsp;', 'first_day_job.html', 'active', '2014-05-16 14:46:14'), ('13', null, 'Privacy Policy', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\n<br />\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\n<br />\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'privacy-policy.html', 'active', '2015-05-20 23:38:56'), ('15', null, 'Why Job', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.<br />\n<br />\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.<br />\n<br />\nNullam enim ex, vulputate at ultricies bibendum, interdum sit amet tortor. Fusce semper augue ac ipsum ultricies interdum. Cras maximus faucibus sapien, et lacinia leo efficitur id. Nullam laoreet pulvinar nibh et ullamcorper. Etiam a lorem rhoncus, rutrum felis sed, blandit orci. Nulla vel tellus gravida, pretium neque a, fringilla lectus. Morbi et leo mi. Aliquam interdum ex ipsum. Vivamus eu ultrices ante, eget volutpat massa. Nulla nisi purus, sollicitudin euismod eleifend pulvinar, dictum rutrum lacus. Nam hendrerit sed arcu a pellentesque. Vestibulum maximus ligula tellus, a euismod dui feugiat et. Aliquam viverra blandit est nec ultricies.<br />\n<br />\nNullam et sem a dui accumsan ornare. Praesent faucibus ultricies orci. Maecenas hendrerit tincidunt rutrum. Phasellus eget libero eget ante interdum venenatis. Cras sodales finibus vulputate. Aenean aliquet velit eget felis pellentesque, et blandit ex facilisis. Vivamus sit amet euismod diam, at rhoncus ex. Nullam consectetur, erat ut maximus dignissim, ex eros pellentesque ex, at dictum odio dui in urna. Nulla rutrum nisi eget risus accumsan, sit amet iaculis risus interdum. Curabitur accumsan eu purus nec condimentum. Fusce pulvinar ex id sagittis sodales. Donec hendrerit scelerisque est, in viverra nibh lobortis et.', 'why_job.html', 'active', '2016-03-12 16:12:11'), ('16', null, 'Preparing for Interview', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.\n<br /><br />\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.\n<br /><br />\nNullam enim ex, vulputate at ultricies bibendum, interdum sit amet tortor. Fusce semper augue ac ipsum ultricies interdum. Cras maximus faucibus sapien, et lacinia leo efficitur id. Nullam laoreet pulvinar nibh et ullamcorper. Etiam a lorem rhoncus, rutrum felis sed, blandit orci. Nulla vel tellus gravida, pretium neque a, fringilla lectus. Morbi et leo mi. Aliquam interdum ex ipsum. Vivamus eu ultrices ante, eget volutpat massa. Nulla nisi purus, sollicitudin euismod eleifend pulvinar, dictum rutrum lacus. Nam hendrerit sed arcu a pellentesque. Vestibulum maximus ligula tellus, a euismod dui feugiat et. Aliquam viverra blandit est nec ultricies.\n<br /><br />\nNullam et sem a dui accumsan ornare. Praesent faucibus ultricies orci. Maecenas hendrerit tincidunt rutrum. Phasellus eget libero eget ante interdum venenatis. Cras sodales finibus vulputate. Aenean aliquet velit eget felis pellentesque, et blandit ex facilisis. Vivamus sit amet euismod diam, at rhoncus ex. Nullam consectetur, erat ut maximus dignissim, ex eros pellentesque ex, at dictum odio dui in urna. Nulla rutrum nisi eget risus accumsan, sit amet iaculis risus interdum. Curabitur accumsan eu purus nec condimentum. Fusce pulvinar ex id sagittis sodales. Donec hendrerit scelerisque est, in viverra nibh lobortis et.\n<br /><br />\n<ul>\n<li>Quisque facilisis purus vel sem laoreet posuere.</li>\n<li>Proin eleifend velit ut elit sollicitudin scelerisque.</li>\n<li>Nulla aliquet urna in magna congue, ac hendrerit velit lacinia.</li>\n<li>Aliquam id urna ut lorem porta vulputate.</li>\n<li>Sed ultrices sem quis risus tincidunt, ut lacinia nunc aliquet.</li>\n<li>Phasellus in est suscipit, feugiat tortor ac, iaculis enim.</li>\n</ul>', 'interview.html', 'active', '2016-03-12 16:17:56'), ('17', null, 'CV Writing Tips', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.\n<br /><br />\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.\n<br /><br />\nNullam enim ex, vulputate at ultricies bibendum, interdum sit amet tortor. Fusce semper augue ac ipsum ultricies interdum. Cras maximus faucibus sapien, et lacinia leo efficitur id. Nullam laoreet pulvinar nibh et ullamcorper. Etiam a lorem rhoncus, rutrum felis sed, blandit orci. Nulla vel tellus gravida, pretium neque a, fringilla lectus. Morbi et leo mi. Aliquam interdum ex ipsum. Vivamus eu ultrices ante, eget volutpat massa. Nulla nisi purus, sollicitudin euismod eleifend pulvinar, dictum rutrum lacus. Nam hendrerit sed arcu a pellentesque. Vestibulum maximus ligula tellus, a euismod dui feugiat et. Aliquam viverra blandit est nec ultricies.\n<br /><br />\nNullam et sem a dui accumsan ornare. Praesent faucibus ultricies orci. Maecenas hendrerit tincidunt rutrum. Phasellus eget libero eget ante interdum venenatis. Cras sodales finibus vulputate. Aenean aliquet velit eget felis pellentesque, et blandit ex facilisis. Vivamus sit amet euismod diam, at rhoncus ex. Nullam consectetur, erat ut maximus dignissim, ex eros pellentesque ex, at dictum odio dui in urna. Nulla rutrum nisi eget risus accumsan, sit amet iaculis risus interdum. Curabitur accumsan eu purus nec condimentum. Fusce pulvinar ex id sagittis sodales. Donec hendrerit scelerisque est, in viverra nibh lobortis et.\n<br /><br />\n<ul>\n<li>Quisque facilisis purus vel sem laoreet posuere.</li>\n<li>Proin eleifend velit ut elit sollicitudin scelerisque.</li>\n<li>Nulla aliquet urna in magna congue, ac hendrerit velit lacinia.</li>\n<li>Aliquam id urna ut lorem porta vulputate.</li>\n<li>Sed ultrices sem quis risus tincidunt, ut lacinia nunc aliquet.</li>\n<li>Phasellus in est suscipit, feugiat tortor ac, iaculis enim.</li>\n</ul>', 'cv_tips.html', 'active', '2016-03-12 16:19:17'), ('18', null, 'How to get Job', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.<br />\n<br />\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.<br />\n<br />\nNullam enim ex, vulputate at ultricies bibendum, interdum sit amet tortor. Fusce semper augue ac ipsum ultricies interdum. Cras maximus faucibus sapien, et lacinia leo efficitur id. Nullam laoreet pulvinar nibh et ullamcorper. Etiam a lorem rhoncus, rutrum felis sed, blandit orci. Nulla vel tellus gravida, pretium neque a, fringilla lectus. Morbi et leo mi. Aliquam interdum ex ipsum. Vivamus eu ultrices ante, eget volutpat massa. Nulla nisi purus, sollicitudin euismod eleifend pulvinar, dictum rutrum lacus. Nam hendrerit sed arcu a pellentesque. Vestibulum maximus ligula tellus, a euismod dui feugiat et. Aliquam viverra blandit est nec ultricies.<br />\n<br />\nNullam et sem a dui accumsan ornare. Praesent faucibus ultricies orci. Maecenas hendrerit tincidunt rutrum. Phasellus eget libero eget ante interdum venenatis. Cras sodales finibus vulputate. Aenean aliquet velit eget felis pellentesque, et blandit ex facilisis. Vivamus sit amet euismod diam, at rhoncus ex. Nullam consectetur, erat ut maximus dignissim, ex eros pellentesque ex, at dictum odio dui in urna. Nulla rutrum nisi eget risus accumsan, sit amet iaculis risus interdum. Curabitur accumsan eu purus nec condimentum. Fusce pulvinar ex id sagittis sodales. Donec hendrerit scelerisque est, in viverra nibh lobortis et.<br />\n<br />\nQuisque facilisis purus vel sem laoreet posuere.<br />\nProin eleifend velit ut elit sollicitudin scelerisque.<br />\nNulla aliquet urna in magna congue, ac hendrerit velit lacinia.<br />\nAliquam id urna ut lorem porta vulputate.<br />\nSed ultrices sem quis risus tincidunt, ut lacinia nunc aliquet.<br />\nPhasellus in est suscipit, feugiat tortor ac, iaculis enim.', 'how_to_get_job.html', 'active', '2016-03-12 16:21:26');
COMMIT;

-- ----------------------------
--  Table structure for `pp_companies`
-- ----------------------------
DROP TABLE IF EXISTS `pp_companies`;
CREATE TABLE `pp_companies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(155) DEFAULT NULL,
  `company_email` varchar(100) DEFAULT NULL,
  `company_ceo` varchar(60) DEFAULT NULL,
  `industry_ID` int(5) DEFAULT NULL,
  `ownership_type` enum('NGO','Private','Public') DEFAULT 'Private',
  `company_description` text,
  `company_location` varchar(155) DEFAULT NULL,
  `no_of_offices` int(11) DEFAULT NULL,
  `company_website` varchar(155) DEFAULT NULL,
  `no_of_employees` varchar(15) DEFAULT NULL,
  `established_in` varchar(12) DEFAULT NULL,
  `company_type` varchar(60) DEFAULT NULL,
  `company_fax` varchar(30) DEFAULT NULL,
  `company_phone` varchar(30) DEFAULT NULL,
  `company_logo` varchar(155) DEFAULT NULL,
  `company_folder` varchar(155) DEFAULT NULL,
  `company_country` varchar(80) DEFAULT NULL,
  `sts` enum('blocked','pending','active') DEFAULT 'active',
  `company_city` varchar(80) DEFAULT NULL,
  `company_slug` varchar(155) DEFAULT NULL,
  `old_company_id` int(11) DEFAULT NULL,
  `old_employerlogin` varchar(100) DEFAULT NULL,
  `flag` varchar(5) DEFAULT NULL,
  `ownership_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_companies`
-- ----------------------------
BEGIN;
INSERT INTO `pp_companies` VALUES ('1', 'Mega Technologies', null, null, '22', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex.\n\nAliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in. Nulla at viverra metus, id porttitor nulla. In et arcu id felis eleifend auctor vitae a justo. Nullam eleifend, purus id hendrerit tempus, massa elit vehicula metus, pharetra elementum lectus elit ac felis. Sed fermentum luctus aliquet. Vestibulum pulvinar ornare ipsum, gravida condimentum nulla luctus sit amet. Sed tempor eros a tempor faucibus. Proin orci tortor, placerat sit amet elementum sit amet, ornare vel urna.', 'Lorem ipsum dolor street, 32423', null, 'www.companyurl.com', '1-10', null, null, null, '313313137', 'JOBPORTAL-1457690431.jpg', null, null, 'active', null, 'mega-technologies', null, null, null, 'Private'), ('2', 'It Pixels', null, null, '22', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in. Nulla at viverra metus, id porttitor nulla. In et arcu id felis eleifend auctor vitae a justo. Nullam eleifend, purus id hendrerit tempus, massa elit vehicula metus, pharetra elementum lectus elit ac felis. Sed fermentum luctus aliquet. Vestibulum pulvinar ornare ipsum, gravida condimentum nulla luctus sit amet. Sed tempor eros a tempor faucibus. Proin orci tortor, placerat sit amet elementum sit amet, ornare vel urna.', 'Lorem ipsum dolor sit amet', null, 'www.companyurl.com', '1-10', null, null, null, '5335434534', 'JOBPORTAL-1457690733.jpg', null, null, 'active', null, 'it-pixels', null, null, null, 'Private'), ('3', 'Info Technologies', null, null, '22', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Lorem ipsum dolor sit amet, consectetur', null, 'www.companyurl.com', '101-300', null, null, null, '123456789', 'JOBPORTAL-1457691226.jpg', null, null, 'active', null, 'info-technologies', null, null, null, 'Private'), ('4', 'Some IT company', null, null, '22', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Lorem ipsum dolor sit amet, consectetur', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457693358.jpg', null, null, 'active', null, 'some-it-company', null, null, null, 'Private'), ('5', 'Abc IT Tech', null, null, '22', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Lorem ipsum dolor sit amet', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457711170.jpg', null, null, 'active', null, 'abc-it-tech', null, null, null, 'Private'), ('6', 'Def It Company', null, null, '40', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457711477.jpg', null, null, 'active', null, 'def-it-company', null, null, null, 'Private'), ('7', 'Ghi Company', null, null, '10', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Lorem ipsum dolor sit amet, consectetur', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457711897.jpg', null, null, 'active', null, 'ghi-company', null, null, null, 'Private'), ('8', 'Jkl Company', null, null, '7', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Lorem ipsum dolor sit amet', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457712255.jpg', null, null, 'active', null, 'jkl-company', null, null, null, 'Private'), ('9', 'Mno Company', null, null, '22', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Lorem ipsum dolor sit amet', null, 'www.companyurl.com', '1-10', null, null, null, '12345679', 'JOBPORTAL-1457713172.jpg', null, null, 'active', null, 'mno-company', null, null, null, 'Private'), ('10', 'MNT Comapny', null, null, '22', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Aenean fermentum fermentum convallis', null, 'www.companyurl.com', '101-300', null, null, null, '123456789', 'JOBPORTAL-1457713426.jpg', null, null, 'active', null, 'mnt-comapny', null, null, null, 'Private'), ('11', 'MNF Comapny', null, null, '16', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Pellentesque hendrerit est id quam facilisis', null, 'www.companyurl.com', '51-100', null, null, null, '123456789', 'JOBPORTAL-1457713999.jpg', null, null, 'active', null, 'mnf-comapny', null, null, null, 'Private'), ('12', 'QWE Company', null, null, '18', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.\n\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', 'Quisque ac scelerisque libero, nec blandit neque', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457768561.jpg', null, null, 'active', null, 'qwe-company', null, null, null, 'Private'), ('13', 'ASD Company', null, null, '10', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.', 'Quisque ac scelerisque libero, nec blandit neque', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457768887.jpg', null, null, 'active', null, 'asd-company', null, null, null, 'Private'), ('14', 'XCV Company', null, null, '18', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.\n\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', 'Nullam enim ex, vulputate at ultricies bibendum', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457769102.jpg', null, null, 'active', null, 'xcv-company', null, null, null, 'Private'), ('15', 'Unique Solutions', null, null, '40', 'Private', 'asdlfjasdfj', 'Narvekar Galli', null, 'asdfsd', '1-10', null, null, null, '88888888888', 'JOBPORTAL-1459152055.jpg', null, null, 'active', null, 'unique-solutions', null, null, null, 'Private'), ('16', 'Kacykos', null, null, '5', 'Private', '234tgfdgh hd hd h dh dvh', 'ssssssssssssaaaaa', null, '423523525252', '11-50', null, null, null, '234242525', 'JOBPORTAL-1459158292.jpg', null, null, 'active', null, 'kacykos', null, null, null, 'Public'), ('23', 'Softrait Technologies', null, null, '22', 'Private', 'rfrfrf', 'frfrf', null, 'efrf', '1-10', null, null, null, 'rfrf', 'JOBPORTAL-1459449801.jpg', null, null, 'active', null, 'softrait-technologies', null, null, null, 'Private'), ('18', 'WM Informática', null, null, '40', 'Private', 'Esta aplicação web é concebida na sua forma actual como um sítio exigindo dinâmicas atualizações constantes tanto dos requerentes, bem como as empresas. No seu conjunto o objetivo do projeto é permitir que os candidatos a emprego a colocar os seus currículos e as empresas a publicar suas vagas.', 'Av. José Bezerra Sobrinho', null, 'www.wminfor.com', '11-50', null, null, null, '(81) 3676-1104', 'JOBPORTAL-1459191669.jpg', null, null, 'active', null, 'wm-informtica', null, null, null, 'Public'), ('22', 'dsfsdf', null, null, '22', 'Private', 'dgdfgd fgdfgdfgdfg dfgdfgdfg dfg dfg dfg dfg dfg', 'sdfsdf sdfsdf sdf sd fsdf fsdf sd fsd f', null, 'www.sdfsdf.com', '11-50', null, null, null, '654456456456', 'JOBPORTAL-1459333898.jpg', null, null, 'active', null, 'dsfsdf', null, null, null, 'Semi-Government'), ('20', 'lkinotech', null, null, '22', 'Private', 'no description', 'panipat', null, 'www.lkitech.com', '1-10', null, null, null, '1804020101', 'JOBPORTAL-1459235594.png', null, null, 'active', null, 'lkinotech', null, null, null, 'Private'), ('21', 'dfgsdfg', null, null, '5', 'Private', 'dfsd erfgerfer erferf', '3434 erfgerge', null, 'ass.com', '1-10', null, null, null, '5555555555', 'JOBPORTAL-1459241338.png', null, null, 'active', null, 'dfgsdfg', null, null, null, 'Public'), ('24', 'fdfdf', null, null, '5', 'Private', 'fdfdfdfdfdf', 'dfdf', null, 'dfdf', '51-100', null, null, null, 'fdfdfd', 'JOBPORTAL-1459502829.jpg', null, null, 'active', null, 'fdfdf', null, null, null, 'Private'), ('25', 'Master Tech', null, null, '10', 'Private', 'mmmmm', 'dha', null, 'www.mastertech.com.bd', '1-10', null, null, null, '878755', 'JOBPORTAL-1459553924.png', null, null, 'active', null, 'master-tech', null, null, null, 'Private'), ('26', 'TechHub', null, null, '3', 'Private', 'TechHub.com', 'Test Address', null, 'TechHub.com', '11-50', null, null, null, '001988734344', 'JOBPORTAL-1459583469.jpg', null, null, 'active', null, 'techhub', null, null, null, 'Public'), ('27', 'PEOPLES WEB INNOVATIONS', null, null, '22', 'Private', 'nothing just for test', 'india', null, 'www.wallofindia.com', '1-10', null, null, null, '677775888578', 'JOBPORTAL-1459593780.jpg', null, null, 'active', null, 'peoples-web-innovations', null, null, null, 'Private'), ('28', 'ksksk', null, null, '10', 'Private', 'jdjdjdj iziziz sjsjsj', 'dkdkdkdkdk', null, 'https://mail.google.com/mail/u/0/#inbox', '301-600', null, null, null, '2°2020202020', 'JOBPORTAL-1459634581.jpg', null, null, 'active', null, 'ksksk', null, null, null, 'Public'), ('29', 'sdfsafd', null, null, '3', 'Private', 'safasfd', 'sdfsdfas', null, 'dsffsafas', '51-100', null, null, null, '4343', 'JOBPORTAL-1459679795.jpg', null, null, 'active', null, 'sdfsafd', null, null, null, 'Public'), ('30', 'Motto', null, null, '40', 'Private', 'sjdfksjdfksjd nfksjdfnd', 'sdf sdf sdf s', null, 'http://mottoiletisim.com', '51-100', null, null, null, '5342029597', 'JOBPORTAL-1459784884.jpg', null, null, 'active', null, 'motto', null, null, null, 'Private'), ('31', 'Art Zeus', null, null, '16', 'Private', 'Teste', 'Teste', null, '21996265039', '11-50', null, null, null, 'Álan', 'JOBPORTAL-1459879029.jpg', null, null, 'active', null, 'art-zeus', null, null, null, 'Public'), ('32', 'smartdev', null, null, '5', 'Private', 'rsearas', 'rsaras', null, 'resar.ge', '1501-2000', null, null, null, 'r2313', 'JOBPORTAL-1459948962.png', null, null, 'active', null, 'smartdev', null, null, null, 'Public'), ('33', 'koko jk', null, null, '5', 'Private', 'ok', 'BP 253', null, 'ok', '1-10', null, null, null, '21548854', 'JOBPORTAL-1460013565.png', null, null, 'active', null, 'koko-jk', null, null, null, 'Private'), ('34', 'sdggsd', null, null, '5', 'Private', 'gsddgs dsggdsgdsd', 'sdgsdg', null, 'fsdsdsggds.pl', '1-10', null, null, null, '22424', 'JOBPORTAL-1460071669.png', null, null, 'active', null, 'sdggsd', null, null, null, 'Public'), ('35', 'dsfsfds', null, null, '10', 'Private', 'fdgdfgd', 'efvaesfesfwef', null, 'fdg.com', '1-10', null, null, null, '23424232', 'JOBPORTAL-1460132506.jpg', null, null, 'active', null, 'dsfsfds', null, null, null, 'Private'), ('36', 'Azienda Alpha', null, null, '22', 'Private', 'test', 'VIa Zurigo, Lugano', null, 'www.test.com', '1-10', null, null, null, '111', 'JOBPORTAL-1460229473.jpg', null, null, 'active', null, 'azienda-alpha', null, null, null, 'Private'), ('37', 'asdasdasd', null, null, '3', 'Private', 'asdasdasdasd', 'sdfsdfsdf', null, 'wfsdsdf.com', '1-10', null, null, null, '345345', 'JOBPORTAL-1460425365.png', null, null, 'active', null, 'asdasdasd', null, null, null, 'Private'), ('38', 'uptech', null, null, '40', 'Private', 'dasdasd', 'asdasdasd', null, 'http://asd.asd', '1-10', null, null, null, '4324234234', 'JOBPORTAL-1460530406.png', null, null, 'active', null, 'uptech', null, null, null, 'Private'), ('39', 'BILMA', null, null, '3', 'Private', 'qdqfd', 'Abdulnasir', null, 'hiiraan.com', '51-100', null, null, null, '02525', 'JOBPORTAL-1460625717.jpg', null, null, 'active', null, 'bilma', null, null, null, 'Public'), ('40', 'xyz', null, null, '22', 'Private', 'rrreytryy', 'dsdfsdf', null, 'www.xyz.com', '51-100', null, null, null, '543444', 'JOBPORTAL-1460700378.jpg', null, null, 'active', null, 'xyz', null, null, null, 'Private'), ('41', 'sparx', null, null, '22', 'Private', 'hello', 'delhi', null, 'spar', '1-10', null, null, null, '9874561230', 'JOBPORTAL-1460721976.jpeg', null, null, 'active', null, 'sparx', null, null, null, 'Public'), ('42', 'Gri Telekom', null, null, '3', 'Private', 'deneme', 'istanbul', null, 'http://www.gritelekom.com', '1-10', null, null, null, '905055050505', 'JOBPORTAL-1460804749.jpg', null, null, 'active', null, 'gri-telekom', null, null, null, 'Private'), ('43', 'Paxten', null, null, '22', 'Private', 'asadasdsd', 'asdasdas', null, 'www.paxten.in', '1-10', null, null, null, '99999999999', 'JOBPORTAL-1460975531.jpg', null, null, 'active', null, 'paxten', null, null, null, 'Private'), ('44', 'start designs', null, null, '16', 'Private', 'test', '8/344 vidhyadhar nagar', null, 'www.webismyworld789@gmail.com', '1-10', null, null, null, '08003366789', 'JOBPORTAL-1461332142.jpg', null, null, 'active', null, 'start-designs', null, null, null, 'Public'), ('45', 'tar? bili?im hizmetleri', null, null, '7', 'Private', 'Job portal is developed for creating an interactive job vacancy for candidates. This web application is to be conceived in its current form as a dynamic site-requiring constant updates both from the seekers as well as the companies. On the whole the objective of the project is to enable jobseekers to place their resumes and companies to publish their vacancies. It enables jobseekers to post their resume, search for jobs, view personal job listings. It will provide various companies to place their vacancy profile on the site and also have an option to search candidate resumes. Apart from this there will be an admin module for the customer to make changes to the database content. It consists of 4 modules:', '5714 37 göztepe', null, 'www.deneme.com', '301-600', null, null, null, '0212530152365', 'JOBPORTAL-1461495364.png', null, null, 'active', null, 'tar-biliim-hizmetleri', null, null, null, 'Private'), ('46', 'ewwfwe', null, null, '40', 'Private', 'sfddssda', 'wweewcs evrve', null, 'scdc.scs', '1-10', null, null, null, '561656810596', 'JOBPORTAL-1461611130.png', null, null, 'active', null, 'ewwfwe', null, null, null, 'Public'), ('47', 'fonseca', null, null, '3', 'Private', 'afafff', 'av joao', null, 'fonseca.com.br', '11-50', null, null, null, '21999754478', 'JOBPORTAL-1461764354.jpg', null, null, 'active', null, 'fonseca', null, null, null, 'Public'), ('48', 'avrupa reklam', null, null, '7', 'Private', 'asdfdsfa', 'Beyazevler', null, 'www.avrupareklam.com.tr', '1-10', null, null, null, '5325858854', 'JOBPORTAL-1461950231.jpg', null, null, 'active', null, 'avrupa-reklam', null, null, null, 'Private'), ('49', 'Handhome', null, null, '35', 'Private', 'Handhome.net là m?t n?n t?ng chia s? thông tin ki?n trúc, n?i th?t t?i Vi?t Nam', '52 Nguyen Thai H?c, Ph??ng ?i?n Biên, Qu?n Ba ?ình, Hà N?i', null, 'http://handhome.net', '1-10', null, null, null, '12345678', 'JOBPORTAL-1462009695.png', null, null, 'active', null, 'handhome', null, null, null, 'Public'), ('50', 'GBBS-IT', null, null, '5', 'Private', 'bonjour', 'lotissement El Salem 3 N° 4 Tahar bouchet Birkhadem Alger', null, 'www.gbbs-it.com', '1-10', null, null, null, '+213550193126', 'JOBPORTAL-1462047950.png', null, null, 'active', null, 'gbbsit', null, null, null, 'Private'), ('51', 'AMAM', null, null, '5', 'Private', 'khjg', 'Villa 42 pins maritime', null, 'GBBS-IT', '11-50', null, null, null, '+213550193126', 'JOBPORTAL-1462048253.png', null, null, 'active', null, 'amam', null, null, null, 'Private'), ('52', 'Confédération Algérienne du Patronat', null, null, '16', 'Private', 'test', 'Hôtel El Aurassi Niveau C Bureau n°7', null, 'www.marwendzc.com', '1-10', null, null, null, '670119423', 'JOBPORTAL-1462049084.png', null, null, 'active', null, 'confdration-algrienne-du-patronat', null, null, null, 'Public'), ('53', 'netzen', null, null, '7', 'Private', 'sadasdsd', 'içerenköy', null, 'www.company.com', '1-10', null, null, null, '5324475202', 'JOBPORTAL-1462141216.jpg', null, null, 'active', null, 'netzen', null, null, null, 'Private'), ('54', 'the testing company', null, null, '5', 'Private', 'adas askd jaskd askd jaks nfasdm,fsad fsdma fname fjsadb fsdfa basdf', 'dfgdfg', null, 'www.testincompany.com', '11-50', null, null, null, '564123231', 'JOBPORTAL-1462172312.png', null, null, 'active', null, 'the-testing-company', null, null, null, 'Public'), ('55', 'hkyhjgjgjhgkjh', null, null, '3', 'Private', 'gszdfszdfsdf', 'kjghkj,hkhjk', null, 'www.lhjkkjh.com', '1-10', null, null, null, '78768767567', 'JOBPORTAL-1462474003.jpg', null, null, 'active', null, 'hkyhjgjgjhgkjh', null, null, null, 'Private'), ('56', 'whitehouse dental practice', null, null, '3', 'Private', 'sdasdasdasdasd', '18 thirlmere drive', null, 'asdadad', '11-50', null, null, null, '7495996849', 'JOBPORTAL-1462541062.jpg', null, null, 'active', null, 'whitehouse-dental-practice', null, null, null, 'Private'), ('57', 'bobbbbbbbbbb', null, null, '3', 'Private', 'zzzzzzzzzzzzzzzzzzzzzzzz', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzz', null, 'http://rtrtr.cc', '1-10', null, null, null, '11111111111111111111', 'JOBPORTAL-1462549881.jpg', null, null, 'active', null, 'bobbbbbbbbbb', null, null, null, 'Private'), ('58', 'teste test', null, null, '3', 'Private', 'teste test', 'teste test', null, 'teste.com', '11-50', null, null, null, '3456798789', 'JOBPORTAL-1462712382.png', null, null, 'active', null, 'teste-test', null, null, null, 'Private'), ('59', 'Test', null, null, '22', 'Private', 'IT', 'NY', null, 'codeareena.com', '1-10', null, null, null, '313444', 'JOBPORTAL-1462948682.png', null, null, 'active', null, 'test', null, null, null, 'Private'), ('60', 'In', null, null, '22', 'Private', 'dadwedew', 'India', null, 'ddsdwfefde', '1-10', null, null, null, '2222222222', 'JOBPORTAL-1463032113.jpg', null, null, 'active', null, 'in', null, null, null, 'Private'), ('61', 'cinestation', null, null, '22', 'Private', 'it sowftware', 'hyderabad', null, 'cinestation.in', '1-10', null, null, null, '8187030758', 'JOBPORTAL-1463114643.jpg', null, null, 'active', null, 'cinestation', null, null, null, 'Private'), ('62', 'Softgators Tech Pvt Ltd', null, null, '22', 'Private', 'asdasddasd', 'D4/26 Vashisth Park', null, 'softgators.com', '1-10', null, null, null, '9015845820', 'JOBPORTAL-1463156147.jpg', null, null, 'active', null, 'softgators-tech-pvt-ltd', null, null, null, 'Private'), ('63', 'TEST', null, null, '35', 'Private', 'SFSDFSDF SD FSD FSDF S', '3', null, 'www.testincompany.com', '11-50', null, null, null, '1118675198', 'JOBPORTAL-1463165183.jpg', null, null, 'active', null, 'test-1463165183', null, null, null, 'Private'), ('64', 'nib technology company', null, null, '3', 'Private', 'our company is our company is our company is our company is our company is our company is our company is our company is our company is our company is our company is our company is our company is our company is our company is our company is', 'addis ababa', null, 'www.websiste.com', '1-10', null, null, null, '+251911996922', 'JOBPORTAL-1463401978.png', null, null, 'active', null, 'nib-technology-company', null, null, null, 'Public'), ('65', 'sadasdsad', null, null, '3', 'Private', 'gfdgfdgdfg', 'sad', null, 'fdgfdgfd', '1-10', null, null, null, 'asdsad', 'JOBPORTAL-1463524284.jpg', null, null, 'active', null, 'sadasdsad', null, null, null, 'Public'), ('66', 'Temp Corp', null, null, '5', 'Private', 'Temporary company', 'Temporary Street, 1234', null, 'www.www.www', '1-10', null, null, null, '111111111', 'JOBPORTAL-1463599153.png', null, null, 'active', null, 'temp-corp', null, null, null, 'Private'), ('67', 'sksks', null, null, '5', 'Private', 'ksskskskks', 'kdkdkd', null, 'http://codeareena.com/jobportal/employer-signup', '1-10', null, null, null, 'ododod', 'JOBPORTAL-1463842511.jpg', null, null, 'active', null, 'sksks', null, null, null, 'Private'), ('68', 'Pakajs', null, null, '7', 'Private', 'Dsss', 'Snsnhssh', null, 'Web', '1-10', null, null, null, '01029883355', 'JOBPORTAL-1464008445.png', null, null, 'active', null, 'pakajs', null, null, null, 'Semi-Government'), ('69', 'ver', null, null, '35', 'Private', 'dfsdf sdfsdfas', 'ERZ?NCAN AÇIK CEZA EV?', null, 'www.sairyazar.com', '11-50', null, null, null, '5443333292', 'JOBPORTAL-1464183007.jpg', null, null, 'active', null, 'ver', null, null, null, 'Public'), ('70', 'ddddd', null, null, '22', 'Private', 'cxxcxcxcxxcxcx', 'fgfgfgf', null, 'www.vvv.com', '11-50', null, null, null, '123456789', 'JOBPORTAL-1464204378.jpg', null, null, 'active', null, 'ddddd', null, null, null, 'Private'), ('71', 'rkparmar', null, null, '3', 'Private', '2342', 'tresr', null, 'gjkhi', '1-10', null, null, null, '556969', 'JOBPORTAL-1464259083.jpg', null, null, 'active', null, 'rkparmar', null, null, null, 'Public'), ('72', 'ivaluelabs', null, null, '3', 'Private', 'fwqerfdsfasdfasdfasdfasdfasdfasdf', 'turrialba costa rica', null, 'www.leo.com', '1-10', null, null, null, '234523452345', 'JOBPORTAL-1464315440.png', null, null, 'active', null, 'ivaluelabs', null, null, null, 'Public'), ('73', 'ugjntechnoly', null, null, '22', 'Private', 'sasA', 'sasa', null, 'ugjntechnology.com', '51-100', null, null, null, '9971562879', 'JOBPORTAL-1464347546.png', null, null, 'active', null, 'ugjntechnoly', null, null, null, 'Public'), ('74', 'Onion Smart Solutions', null, null, '22', 'Private', 'Software Development Company', '369-00100 Nairobi', null, 'www.onion.co.ke', '101-300', null, null, null, '0718199017', 'JOBPORTAL-1464458862.png', null, null, 'active', null, 'onion-smart-solutions', null, null, null, 'Private'), ('75', 'fddsfsdf', null, null, '7', 'Private', 'dsfsdfsdf', 'dsfsdf', null, 'sdfsdf', '11-50', null, null, null, '066666666666', 'JOBPORTAL-1464470540.gif', null, null, 'active', null, 'fddsfsdf', null, null, null, 'Government'), ('76', 'rrrr', null, null, '5', 'Private', 'effsdfdsdgdfg', 'wedsafadsf', null, 'neuronswork.com/', '1-10', null, null, null, 'dfdfdf', 'JOBPORTAL-1464734965.jpg', null, null, 'active', null, 'rrrr', null, null, null, 'Government'), ('77', 'Patel', null, null, '18', 'Private', 'dsfsd', 'dsfsdf', null, 'www.google.com', '1-10', null, null, null, '4353453', 'JOBPORTAL-1464966601.png', null, null, 'active', null, 'patel', null, null, null, 'Private'), ('78', 'aaj mid', null, null, '16', 'Private', '05000', 'dubai', null, '05000', '11-50', null, null, null, '05000', 'JOBPORTAL-1465349326.jpg', null, null, 'active', null, 'aaj-mid', null, null, null, 'Public'), ('79', 'the koko', null, null, '16', 'Private', 'deals with web design of any sort and develpo apps for companies', '4B shopping mall', null, 'thekoko.com', '1-10', null, null, null, '01678905', 'JOBPORTAL-1465479729.jpg', null, null, 'active', null, 'the-koko', null, null, null, 'Private'), ('80', 'test', null, null, '35', 'Private', 'test', 'test', null, 'test.nl', '1-10', null, null, null, 'test', 'JOBPORTAL-1465913974.jpg', null, null, 'active', null, 'test-1465913974', null, null, null, 'Private');
COMMIT;

-- ----------------------------
--  Table structure for `pp_countries`
-- ----------------------------
DROP TABLE IF EXISTS `pp_countries`;
CREATE TABLE `pp_countries` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(150) NOT NULL DEFAULT '',
  `country_citizen` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_countries`
-- ----------------------------
BEGIN;
INSERT INTO `pp_countries` VALUES ('1', 'United States', 'United States'), ('2', 'United Kingdom', 'United Kingdom'), ('3', 'Australia', 'Australia'), ('4', 'Pakistan', 'Pakistan'), ('5', 'United Arab Emirates', 'United Arab Emirates'), ('6', 'China', 'China'), ('7', 'Canada', 'Canada'), ('8', 'Sweden', 'Swedish');
COMMIT;

-- ----------------------------
--  Table structure for `pp_email_content`
-- ----------------------------
DROP TABLE IF EXISTS `pp_email_content`;
CREATE TABLE `pp_email_content` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `email_name` varchar(155) DEFAULT NULL,
  `from_name` varchar(155) DEFAULT NULL,
  `content` text,
  `from_email` varchar(90) DEFAULT NULL,
  `subject` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_email_content`
-- ----------------------------
BEGIN;
INSERT INTO `pp_email_content` VALUES ('1', 'Forgot Password', 'MNO Jobs', '<style type=\"text/css\">\n				.txt {\n						font-family: Arial, Helvetica, sans-serif;\n						font-size: 13px; color:#000000;\n					}\n				</style>\n<p class=\"txt\">Thank you  for contacting Member Support. Your account information is listed below: </p>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" class=\"txt\">\n  <tr>\n    <td width=\"17\" height=\"19\"><p>&nbsp;</p></td>\n    <td width=\"159\" height=\"25\" align=\"right\"><strong>Login Page:&nbsp;&nbsp;</strong></td>\n    <td width=\"424\" align=\"left\"><a href=\"{SITE_URL}/login\">{SITE_URL}/login</a></td>\n  </tr>\n  <tr>\n    <td height=\"19\">&nbsp;</td>\n    <td height=\"25\" align=\"right\"><strong>Your Username:&nbsp;&nbsp;</strong></td>\n    <td align=\"left\">{USERNAME}</td>\n  </tr>\n  <tr>\n    <td height=\"19\"><p>&nbsp;</p></td>\n    <td height=\"25\" align=\"right\"><strong>Your Password:&nbsp;&nbsp;</strong></td>\n    <td align=\"left\">{PASSWORD}</td>\n  </tr>\n</table>\n\n<p class=\"txt\">Thank you,</p>', 'service@jobportalbeta.com', 'Password Recovery'), ('2', 'Jobseeker Signup', 'Jobseeker Signup Successful', '<style type=\"text/css\">p {font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#000000;}</style>\n\n  <p>{JOBSEEKER_NAME}:</p>\n  <p>Thank you for joining us. Please note your profile details for future record.</p>\n  <p>Username: {USERNAME}<br>\n    Password: {PASSWORD}</p>\n  \n  <p>Regards</p>', 'service@jobportalbeta.com', 'Jobs website'), ('3', 'Employer signs up', 'Employer Signup Successful', '<style type=\"text/css\">p {font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#000000;}</style>\n\n  <p>{EMPLOYER_NAME}</p>\n  <p>Thank you for joining us. Please note your profile details for future record.</p>\n  <p>Username: {USERNAME}<br>\n    Password: {PASSWORD}</p>\n  <p>Regards</p>', 'service@jobportalbeta.com', 'Jobs website'), ('4', 'New job is posted by Employer', 'New Job Posted', '<style type=\"text/css\">p {font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#000000;}</style>\n\n  <p>{JOBSEEKER_NAME},</p>\n  <p>We would like to inform  that a new job has been posted on our website that may be of your interest.</p>\n  <p>Please visit the  following link to review and apply:</p>\n <p>{JOB_LINK}</p>\n  <p>Regards,</p>', 'service@jobportalbeta.com', 'New {JOB_CATEGORY}'), ('5', 'Apply Job', 'Job Application', '<style type=\"text/css\">p {font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#000000;}</style>\n  <p>{EMPLOYER_NAME}:</p>\n  <p>A new candidate has applied for the post of {JOB_TITLE}.</p>\n  <p>Please visit the following link to review the applicant profile.<br>\n    {CANDIDATE_PROFILE_LINK}</p>\n  <p>Regards,</p>', 'service@jobportalbeta.com', 'New Job CV {JOB_TITLE}'), ('6', 'Job Activation Email', 'Job Activated', '<style type=\"text/css\">p {font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#000000;}</style>\n  <p>{EMPLOYER_NAME}:</p>\n  <p>You had recently posted a job: {JOB_TITLE} on our website.</p>\n  <p>Your recent job has been approved and should be displaying on our website.</p>\n  <p>Thank you for using our website.</p>\n  <p>Regards,</p>', 'service@jobportalbeta.com', '{JOB_TITLE}  is now active'), ('7', 'Send Message To Candidate', '{EMPLOYER_NAME}', '<style type=\"text/css\">p {font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#000000;}</style>\r\n  <p>Hi {JOBSEEKER_NAME}:</p>\r\n  <p>A new message has been posted for you by :  {COMPANY_NAME}.</p>\r\n  <p>Message:</p>\r\n  <p>{MESSAGE}</p>\r\n  <p>You may review this company by going to: {COMPANY_PROFILE_LINK} to company profile.</p>\r\n  \r\n  <p>Regards,</p>', '{EMPLOYER_EMAIL}', 'New message for you'), ('8', 'Scam Alert', '{JOBSEEKER_NAME}', 'bla bla bla', '{JOBSEEKER_EMAIL}', 'Company reported');
COMMIT;

-- ----------------------------
--  Table structure for `pp_employers`
-- ----------------------------
DROP TABLE IF EXISTS `pp_employers`;
CREATE TABLE `pp_employers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `company_ID` int(6) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass_code` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `mobile_phone` varchar(30) NOT NULL DEFAULT '',
  `gender` enum('female','male') DEFAULT NULL,
  `dated` date NOT NULL,
  `sts` enum('blocked','pending','active') NOT NULL DEFAULT 'active',
  `dob` date DEFAULT NULL,
  `home_phone` varchar(30) DEFAULT NULL,
  `verification_code` varchar(155) DEFAULT NULL,
  `first_login_date` datetime DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `ip_address` varchar(40) DEFAULT NULL,
  `old_emp_id` int(11) DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `present_address` varchar(155) DEFAULT NULL,
  `top_employer` enum('no','yes') DEFAULT 'no',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_employers`
-- ----------------------------
BEGIN;
INSERT INTO `pp_employers` VALUES ('1', '1', 'test@test.com', 'test123', 'Jhon Doe', null, 'United States', 'New York', '135646456', null, '2016-03-11', 'active', null, '0', null, '2016-03-11 14:54:55', '2016-04-11 23:45:57', '115.186.165.234', null, null, null, 'yes'), ('2', '2', 'test2@test2.com', 'test123', 'Andrew', null, 'United States', 'New York', '4353453455', null, '2016-03-11', 'active', null, '0', null, null, null, '115.186.165.234', null, null, null, 'yes'), ('3', '3', 'test3@test3.com', 'test123', 'Danny', null, 'Australia', 'Sydney', '123456789', null, '2016-03-11', 'active', null, '0', null, null, null, '115.186.165.234', null, null, null, 'yes'), ('4', '4', 'test4@test4.com', 'test123', 'Daniel', null, 'China', 'Hong Kong', '123465789', null, '2016-03-11', 'active', null, '0', null, null, null, '115.186.165.234', null, null, null, 'yes'), ('5', '5', 'test5@test5.com', 'test123', 'Anthony', null, 'United Arab Emirates', 'Dubai', '123456789', null, '2016-03-11', 'active', null, '0', null, null, null, '101.50.114.8', null, null, null, 'yes'), ('6', '6', 'test6@test6.com', 'test123', 'Charles', null, 'United States', 'New York', '123456789', null, '2016-03-11', 'active', null, '0', null, null, null, '101.50.114.8', null, null, null, 'yes'), ('7', '7', 'test7@test7.com', 'test123', 'Edward', null, 'United Arab Emirates', 'Dubai', '123456789', null, '2016-03-11', 'active', null, '0', null, null, null, '101.50.114.8', null, null, null, 'yes'), ('8', '8', 'test8@test8.com', 'test123', 'Jonathan', null, 'United States', 'New York', '123456789', null, '2016-03-11', 'active', null, '0', null, null, null, '101.50.114.8', null, null, null, 'yes'), ('9', '9', 'test10@test10.com', 'test123', 'Oscar', null, 'United States', 'New York', '123456789', null, '2016-03-11', 'active', null, '0', null, null, null, '101.50.114.8', null, null, null, 'yes'), ('10', '10', 'test@test11.com', 'test123', 'Lee', null, 'Pakistan', 'Islamabad', '132465798', null, '2016-03-11', 'active', null, '0', null, null, null, '101.50.114.8', null, null, null, 'yes'), ('11', '11', 'test@test12.com', 'test123', 'Mark', null, 'United States', 'New York', '123456789', null, '2016-03-11', 'active', null, '0', null, null, null, '101.50.114.8', null, null, null, 'yes'), ('12', '12', 'test16@test.com', 'test123', 'James', null, 'United States', 'New York', '123456789', null, '2016-03-12', 'active', null, '0', null, null, null, '115.186.165.234', null, null, null, 'yes'), ('13', '13', 'test17@test.com', 'test123', 'George', null, 'United States', 'Los Angeles', '123456789', null, '2016-03-12', 'active', null, '0', null, null, null, '115.186.165.234', null, null, null, 'yes'), ('14', '14', 'test18@test.com', 'test123', 'Mark', null, 'United States', 'Las Vegas', '123456789', null, '2016-03-12', 'active', null, '0', null, null, null, '115.186.165.234', null, null, null, 'yes'), ('15', '15', 'sarfaraz.dalawai@gmail.com', 'reliance', 'Sarfarajahmed Dalawai', null, 'Australia', 'Belgaum', '8880456888', null, '2016-03-28', 'active', null, '0', null, null, null, '122.171.222.168', null, null, null, 'no'), ('16', '16', 'kacykos@gmail.com', 'kacper93', 'Kacykos', null, 'United Kingdom', 'London', '34343523535', null, '2016-03-28', 'active', null, '0', null, null, null, '83.27.161.159', null, null, null, 'no'), ('23', '23', 'abduravoof@gmail.com', 'ravoof123', 'Abdu Ravoof', null, 'Pakistan', 'Austin', 'rf', null, '2016-03-31', 'active', null, '0', null, null, null, '180.215.122.100', null, null, null, 'no'), ('18', '18', 'stifipy@gmail.com', 'admin123', 'Carlos', null, 'United Kingdom', 'Tamandare', '(81) 9 9999-243', null, '2016-03-29', 'active', null, '0', null, '2016-03-29 00:04:09', '2016-04-01 22:05:47', '186.194.119.121', null, null, null, 'no'), ('22', '22', 'alicevher@acbilisim.com.tr', '1qaz2wsx', 'Ali Cevcev', null, 'United Kingdom', 'London', '445456456645', null, '2016-03-30', 'active', null, '0', null, null, null, '78.162.229.207', null, null, null, 'no'), ('20', '20', 'pankajsaini5@gmail.com', 'asdf1234', 'pankaj', null, 'United Arab Emirates', 'dubai', '989898999', null, '2016-03-29', 'active', null, '0', null, null, null, '45.119.143.124', null, null, null, 'no'), ('21', '21', 'xcvc@dfd.com', '123456', 'sdgedsfrg', null, 'United States', 'columbus', '5555555555', null, '2016-03-29', 'active', null, '0', null, null, null, '173.18.248.203', null, null, null, 'no'), ('24', '24', 'test@df.com', '123456', 'fdf', null, 'China', 'fdfdf', 'dfdfd', null, '2016-04-01', 'active', null, '0', null, null, null, '171.18.2.109', null, null, null, 'no'), ('25', '25', 'saiful@mastertech.com.bd', '123456', 'Saiful', null, 'Pakistan', 'Abu Dhabi', '886364637', null, '2016-04-02', 'active', null, '0', null, '2016-04-03 17:36:38', '2016-04-03 17:40:25', '103.230.62.226', null, null, null, 'no'), ('26', '26', 'mca.swathireddy24@gmail.com', 'password', 'Swathi', null, 'United States', 'TS', '001988734344', null, '2016-04-02', 'active', null, '0', null, '2016-04-02 12:53:31', '2016-04-02 12:53:31', '49.206.231.119', null, null, null, 'no'), ('27', '27', 'mini@wallofindia.com', 'alam1234', 'pwi', null, 'United States', 'washington', '7869917373', null, '2016-04-02', 'active', null, '0', null, null, null, '117.247.60.131', null, null, null, 'no'), ('28', '28', 'hrassif@gmail.com', 'marocain', 'sdskdk', null, 'China', 'casa', '2929292929', null, '2016-04-03', 'active', null, '0', null, null, null, '105.139.98.16', null, null, null, 'no'), ('29', '29', 'dsfsd@asd.com', 'hello123', 'sdfsadf', null, 'China', 'sdfsdaf', '234223423', null, '2016-04-03', 'active', null, '0', null, null, null, '82.166.140.125', null, null, null, 'no'), ('30', '30', 'ales.mcgregor@gmail.com', 'maldini123', 'Ales Taghiyev', null, 'China', 'istanbul', '5342029597', null, '2016-04-04', 'active', null, '0', null, '2016-06-03 12:59:59', '2016-06-03 12:59:59', '78.182.77.41', null, null, null, 'no'), ('31', '31', 'alanew3d@gmail.com', 'ags1977', 'Alan', null, 'Canada', 'RJ', '21996265039', null, '2016-04-05', 'active', null, '0', null, null, null, '200.149.30.39', null, null, null, 'no'), ('32', '32', 'nikanatsarishvili@gmail.com', 'helperrr13', 'jini', null, 'Canada', 'Chicago', '3123', null, '2016-04-06', 'active', null, '0', null, null, null, '176.73.74.34', null, null, null, 'no'), ('33', '33', 'treval81@gmail.com', 'azerty', 'ok', null, 'United Kingdom', 'ok', '01020102', null, '2016-04-07', 'active', null, '0', null, null, null, '197.159.204.88', null, null, null, 'no'), ('34', '34', 'test@test.pl', 'tomek21', 'sdgsdg', null, 'Pakistan', 'Washington', '242424', null, '2016-04-08', 'active', null, '0', null, null, null, '88.199.134.2', null, null, null, 'no'), ('35', '35', 'skdsnss@gmail.com', '03743722', 'sdfsfsfd', null, 'United States', 'america', '232342342', null, '2016-04-08', 'active', null, '0', null, '2016-04-25 15:52:26', '2016-04-25 20:21:59', '123.231.120.61', null, null, null, 'no'), ('36', '36', 'c68227@trbvn.com', 'ore24e25', 'Mio prova', null, 'Australia', 'asdsdas', '333', null, '2016-04-10', 'active', null, '0', null, null, null, '213.55.184.198', null, null, null, 'no'), ('37', '37', 'asd@asd.com', 'artajoon', 'adsadasd', null, 'United Kingdom', 'asdasdasd', '4535345345', null, '2016-04-12', 'active', null, '0', null, null, null, '82.178.121.102', null, null, null, 'no'), ('38', '38', 'uptechng@gmail.com', '10ade10', 'ralph', null, 'United States', 'qqwe', '423423423', null, '2016-04-13', 'active', null, '0', null, '2016-05-06 20:26:35', '2016-05-06 20:26:35', '197.211.53.2', null, null, null, 'no'), ('39', '39', 'nasiridle@gmail.com', 'siyaado123', 'Abdulnasir', null, 'Canada', 'Hyderabad', '25252', null, '2016-04-14', 'active', null, '0', null, null, null, '81.82.201.184', null, null, null, 'no'), ('40', '40', 'abc@gmail.com', 'abcdfg', 'abc', null, 'United States', 'ssss', '53543545', null, '0000-00-00', 'active', null, '0', null, null, null, '122.179.54.139', null, null, null, 'no'), ('41', '41', 'ram.prakash@sparxtechnologies.com', '123456', 'ram', null, 'United Arab Emirates', 'delhi', '9874561230', null, '2016-04-15', 'active', null, '0', null, null, null, '180.151.15.82', null, null, null, 'no'), ('42', '42', 'x7even@gmail.com', 'asd123', 'Ismail', null, 'Canada', 'canada', '905055050505', null, '2016-04-16', 'active', null, '0', null, null, null, '185.84.180.61', null, null, null, 'no'), ('43', '43', 'paxten.in@gmail.com', 'asdf1234', 'Paxten', null, 'United Kingdom', 'London', '9999999999', null, '2016-04-18', 'active', null, '0', null, '2016-04-23 22:50:26', '2016-04-23 23:26:45', '14.141.43.6', null, null, null, 'no'), ('44', '44', 'vipin10agarwal@gmail.com', '123456', 'VIpin Agarwal', null, 'United States', 'new york', '08003366789', null, '2016-04-22', 'active', null, '0', null, null, null, '122.161.102.237', null, null, null, 'no'), ('45', '45', 'emrahtari@hotmail.com', '98989889', 'emrah tar', null, 'United Kingdom', 'ZMR', '05301523654', null, '2016-04-24', 'active', null, '0', null, null, null, '88.243.88.54', null, null, null, 'no'), ('46', '46', 'a.alknanj@gmail.com', '123123', 'azzam', null, 'Canada', 'California', '+62626', null, '2016-04-26', 'active', null, '0', null, null, null, '66.85.139.246', null, null, null, 'no'), ('47', '47', 'fsinternet@gmail.com', '212226', 'fernando silva', null, 'Canada', 'niteroi', '21999754478', null, '2016-04-27', 'active', null, '0', null, null, null, '177.136.147.136', null, null, null, 'no'), ('48', '48', 'vlkndgn@gmail.com', '12345qwert', 'Volkan Do?an', null, 'United States', 'ALASKA', '5325858854', null, '2016-04-29', 'active', null, '0', null, '2016-04-29 22:17:19', '2016-04-29 22:17:19', '78.191.135.211', null, null, null, 'no'), ('49', '49', '1984@handhome.net', 'Hieu_1811', 'Hieu Tran', null, 'United States', 'Kansas', '0912345678', null, '2016-04-30', 'active', null, '0', null, null, null, '117.0.56.17', null, null, null, 'no'), ('50', '50', 'ouanes.amine@hotmail.fr', '123456', 'OUANES Amine', null, 'Canada', 'Alger', '+213550193126', null, '2016-05-01', 'active', null, '0', null, '2016-05-01 01:31:42', '2016-06-09 02:19:02', '105.101.218.118', null, null, null, 'no'), ('51', '51', 'manager@gbbs-it.com', '123456', 'OUAOUA', null, 'Canada', 'ss', '+213550193126', null, '2016-05-01', 'active', null, '0', null, '2016-05-01 01:32:24', '2016-05-01 01:32:24', '105.101.218.118', null, null, null, 'no'), ('52', '52', 'marwendzcomputing@hotmail.com', '123456789', 'Brahim OUBAYA', null, 'Australia', 'San Francisco', '670119423', null, '2016-05-01', 'active', null, '0', null, null, null, '105.102.169.119', null, null, null, 'no'), ('53', '53', 'seneraltas@hotmail.com.tr', 'sananeaq', 'sener deneme', null, 'Pakistan', 'Boston', '5324475202', null, '2016-05-02', 'active', null, '0', null, null, null, '78.179.65.180', null, null, null, 'no'), ('54', '54', 'en@gmail.com', '123456789', 'test', null, 'China', 'name', '1121245453', null, '2016-05-02', 'active', null, '0', null, null, null, '105.93.45.53', null, null, null, 'no'), ('55', '55', 'c1657404@trbvn.com', 'A123456789', 'dsjjhkh', null, 'Pakistan', 'San Francisco', '7867567657657', null, '2016-05-05', 'active', null, '0', null, null, null, '119.235.50.110', null, null, null, 'no'), ('56', '56', 'seanbrogan123@gmail.com', 'sean123', 'Sean brogan', null, 'United Kingdom', 'wirral', '7495996849', null, '2016-05-06', 'active', null, '0', null, null, null, '81.142.74.238', null, null, null, 'no'), ('57', '57', '86691896@qq.com', '86691896', 'bob', null, 'United States', 'shanghai', '111111111111111', null, '2016-05-06', 'active', null, '0', null, '2016-05-07 06:49:59', '2016-05-10 17:43:03', '114.111.167.226', null, null, null, 'no'), ('58', '58', 'demo@demo.com', '123456', 'teste test', null, 'Australia', 'teste test', '4356545687', null, '2016-05-08', 'active', null, '0', null, '2016-05-08 18:07:17', '2016-05-08 18:07:17', '41.141.9.116', null, null, null, 'no'), ('59', '59', 'maruf_078@yahoo.com', '123456', 'Maruf', null, 'United States', 'NY', '132132', null, '2016-05-11', 'active', null, '0', null, null, null, '114.134.89.35', null, null, null, 'no'), ('60', '60', 'rajivkchugh@yahoo.com', 'rajivc', 'Rajiv', null, 'United States', 'Delware', '2222222222', null, '2016-05-12', 'active', null, '0', null, '2016-05-14 10:08:41', '2016-05-14 10:08:41', '122.160.49.55', null, null, null, 'no'), ('61', '61', 'pickalife001@gmail.com', '9440494081', 'amar', null, 'Canada', 'Hyderabad', '8187030758', null, '2016-05-13', 'active', null, '0', null, '2016-05-13 09:48:20', '2016-05-13 12:16:11', '49.205.81.161', null, null, null, 'no'), ('62', '62', 'kumar3180@gmail.com', 'redhat', 'Raakesh Kumar', null, 'United Kingdom', 'New Delhi', '9015845820', null, '2016-05-13', 'active', null, '0', null, '2016-05-13 21:17:12', '2016-05-13 21:17:12', '43.247.41.97', null, null, null, 'no'), ('63', '63', 'eng.hesham.abdelglil@outlook.com', '9528431', 'Hesham', null, 'Australia', 'DFDF', '1118675198', null, '2016-05-13', 'active', null, '0', null, null, null, '105.94.206.109', null, null, null, 'no'), ('64', '64', 'biniyam2010@gmail.com', '123456', 'nib technology company', null, 'Australia', 'canada', '0911996922', null, '2016-05-16', 'active', null, '0', null, null, null, '197.156.67.126', null, null, null, 'no'), ('65', '65', 'dfgdfg@fdgfd.com', 'pichula', 'asdsadsad', null, 'United Kingdom', 'london', 'asdsa', null, '2016-05-18', 'active', null, '0', null, null, null, '190.42.88.61', null, null, null, 'no'), ('66', '66', 'temp@gow.blog.br', 'temporary', 'Temporary Account', null, 'United States', 'New York', '111111111', null, '2016-05-19', 'active', null, '0', null, null, null, '189.59.173.105', null, null, null, 'no'), ('67', '67', 'hrassif@yahoo.fr', 'marocain', 'hdhdh', null, 'China', 'casa', '82828282828282', null, '2016-05-21', 'active', null, '0', null, '2016-05-25 14:56:32', '2016-05-25 15:15:12', '105.155.97.154', null, null, null, 'no'), ('68', '68', 'pkcc5532@gmail.com', 'pkcc5532', 'Pakrk', null, 'United Arab Emirates', 'Sjshhsj', '020202020', null, '2016-05-23', 'active', null, '0', null, '2016-05-23 19:03:43', '2016-05-25 17:35:47', '125.152.251.206', null, null, null, 'no'), ('69', '69', 'siteyazar@gmail.com', 'defter', 'Ersin ayd?n', null, 'United States', 'adffd', '5443333292', null, '2016-05-25', 'active', null, '0', null, null, null, '5.47.189.41', null, null, null, 'no'), ('70', '70', 'viyanarehand@gmail.com', '1234567', 'ddddd', null, 'Pakistan', 'Chicago', '123456987', null, '2016-05-26', 'active', null, '0', null, null, null, '123.231.124.220', null, null, null, 'no'), ('71', '71', 'parmar.riddhish@gmail.com', '123456', 'riddhish', null, 'China', 'hjhk', '8866699896', null, '2016-05-26', 'active', null, '0', null, '2016-05-26 15:46:34', '2016-05-26 15:46:34', '180.215.4.177', null, null, null, 'no'), ('72', '72', 'leoaguilarfuentes@gmail.com', 'laguilar', 'leonardo aguilar fuentes', null, 'Canada', 'dfasdfdsf', '34523452345', null, '2016-05-27', 'active', null, '0', null, null, null, '201.204.149.149', null, null, null, 'no'), ('73', '73', 'cwsplravi@gmail.com', 'raviarya', 'raviarya', null, 'Australia', 'NEW DELHI', '9971562879', null, '2016-05-27', 'active', null, '0', null, null, null, '45.115.190.103', null, null, null, 'no'), ('74', '74', 'info@onion.co.ke', '604112100', 'Gray Jumba', null, 'United States', 'New York', '0718199017', null, '2016-05-28', 'active', null, '0', null, null, null, '154.78.22.234', null, null, null, 'no'), ('75', '75', 'crazyweb@yopmail.com', 'aaqqww', 'dsfsdhf', null, 'United Kingdom', 'london', '0622020201', null, '2016-05-29', 'active', null, '0', null, '2016-05-29 02:20:44', '2016-05-29 02:20:58', '41.249.90.249', null, null, null, 'no'), ('76', '76', 'neyberbz@gmail.com', '123456', 'rrrr', null, 'United Arab Emirates', 'dsfdf', '324234', null, '2016-06-01', 'active', null, '0', null, null, null, '190.236.166.115', null, null, null, 'no'), ('77', '77', 'rvpnrp@gmail.com', 'nir456', 'Rakesh', null, 'Australia', 'sydney', '453454', null, '2016-06-03', 'active', null, '0', null, null, null, '14.200.233.213', null, null, null, 'no'), ('78', '78', 'rmzuae.com@gmail.com', '26377559', 'abdulla thani', null, 'United Arab Emirates', 'dubai', '05000', null, '2016-06-08', 'active', null, '0', null, null, null, '31.215.210.167', null, null, null, 'no'), ('79', '79', 'rectus1960@yahoo.com', '1234567', 'Dagbo', null, 'United States', 'atlanta', '+235675843789', null, '2016-06-09', 'active', null, '0', null, '2016-06-09 19:10:42', '2016-06-15 21:56:41', '41.206.1.9', null, null, null, 'no'), ('80', '80', 'test@test.nl', 'testtest', 'test', null, 'Pakistan', 'Boston', 'test', null, '2016-06-14', 'active', null, '0', null, null, null, '5.178.39.122', null, null, null, 'no');
COMMIT;

-- ----------------------------
--  Table structure for `pp_favourite_candidates`
-- ----------------------------
DROP TABLE IF EXISTS `pp_favourite_candidates`;
CREATE TABLE `pp_favourite_candidates` (
  `employer_id` int(11) NOT NULL AUTO_INCREMENT,
  `seekerid` int(11) DEFAULT NULL,
  `employerlogin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `pp_favourite_companies`
-- ----------------------------
DROP TABLE IF EXISTS `pp_favourite_companies`;
CREATE TABLE `pp_favourite_companies` (
  `seekerid` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) DEFAULT NULL,
  `seekerlogin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seekerid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `pp_institute`
-- ----------------------------
DROP TABLE IF EXISTS `pp_institute`;
CREATE TABLE `pp_institute` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sts` enum('blocked','active') DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `pp_job_alert`
-- ----------------------------
DROP TABLE IF EXISTS `pp_job_alert`;
CREATE TABLE `pp_job_alert` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `job_ID` int(11) DEFAULT NULL,
  `dated` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `pp_job_alert_queue`
-- ----------------------------
DROP TABLE IF EXISTS `pp_job_alert_queue`;
CREATE TABLE `pp_job_alert_queue` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) DEFAULT NULL,
  `job_ID` int(11) DEFAULT NULL,
  `dated` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `pp_job_functional_areas`
-- ----------------------------
DROP TABLE IF EXISTS `pp_job_functional_areas`;
CREATE TABLE `pp_job_functional_areas` (
  `ID` int(7) NOT NULL AUTO_INCREMENT,
  `industry_ID` int(7) DEFAULT NULL,
  `functional_area` varchar(155) DEFAULT NULL,
  `sts` enum('suspended','active') DEFAULT 'active',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0;

-- ----------------------------
--  Table structure for `pp_job_industries`
-- ----------------------------
DROP TABLE IF EXISTS `pp_job_industries`;
CREATE TABLE `pp_job_industries` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `industry_name` varchar(155) DEFAULT NULL,
  `slug` varchar(155) DEFAULT NULL,
  `sts` enum('suspended','active') DEFAULT 'active',
  `top_category` enum('no','yes') DEFAULT 'no',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 PACK_KEYS=0;

-- ----------------------------
--  Records of `pp_job_industries`
-- ----------------------------
BEGIN;
INSERT INTO `pp_job_industries` VALUES ('3', 'Accounts', 'accounts', 'active', 'yes'), ('5', 'Advertising', 'advertising', 'active', 'yes'), ('7', 'Banking', 'banking', 'active', 'yes'), ('10', 'Customer Service', 'customer-service', 'active', 'yes'), ('16', 'Graphic / Web Design', 'graphic-web-design', 'active', 'yes'), ('18', 'HR / Industrial Relations', 'hr-industrial-relations', 'active', 'yes'), ('22', 'IT - Software', 'it-software', 'active', 'yes'), ('35', 'Teaching / Education', 'teaching-education', 'active', 'yes'), ('40', 'IT - Hardware', 'it-hardware', 'active', 'yes');
COMMIT;

-- ----------------------------
--  Table structure for `pp_job_seekers`
-- ----------------------------
DROP TABLE IF EXISTS `pp_job_seekers`;
CREATE TABLE `pp_job_seekers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(155) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `dated` datetime NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `gender` enum('female','male') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `default_cv_id` int(11) NOT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `home_phone` varchar(25) DEFAULT NULL,
  `cnic` varchar(255) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `career_objective` text,
  `sts` enum('active','blocked','pending') NOT NULL DEFAULT 'active',
  `verification_code` varchar(155) DEFAULT NULL,
  `first_login_date` datetime DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `slug` varchar(155) DEFAULT NULL,
  `ip_address` varchar(40) DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `queue_email_sts` tinyint(1) DEFAULT NULL,
  `send_job_alert` enum('no','yes') DEFAULT 'yes',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_job_seekers`
-- ----------------------------
BEGIN;
INSERT INTO `pp_job_seekers` VALUES ('8', 'Test Test', null, 'testtest123@gmail.com', 'testtest', 'here', null, '2016-03-12 01:44:43', 'Pakistan', 'Islamabad', 'male', '1990-01-01', null, 'no-image.jpg', '0', '123123123', '123123123', null, '1', null, 'active', null, '2016-05-14 15:39:15', '2016-05-14 15:39:15', null, '2.50.150.100', null, null, null, 'yes'), ('9', 'Michel Jen', null, 'qwert@test.com', 'test123', 'n eu mattis mauris. Fusce fringilla imperdiet enim', null, '2016-03-12 01:51:56', 'United States', 'New York', 'male', '1988-04-09', null, 'no-image.jpg', '0', '123456789', '123456789', null, 'United States', null, 'active', null, null, null, null, '115.186.165.234', null, null, null, 'yes'), ('10', 'Jhony Man', null, 'etest@test.com', 'test123', 'Quisque ac scelerisque libero, nec blandit neque. Nullam felis nisl,', null, '2016-03-12 13:04:32', 'United States', 'Las Vegas', 'male', '1989-04-04', null, 'no-image.jpg', '0', '123456897', '', null, 'United States', null, 'active', null, null, null, null, '115.186.165.234', null, null, null, 'yes'), ('11', 'Kganxx', null, 'kganxx@gmail.com', 'Solutions123', 'PO Box 450125', null, '2016-03-28 14:11:09', 'United States', 'New York', 'male', '1988-05-31', null, 'no-image.jpg', '0', '152485145', '', null, 'United Arab Emirates', null, 'active', null, '2016-03-28 14:13:41', '2016-03-28 14:13:41', null, '2.49.65.117', null, null, null, 'yes'), ('12', 'KAcykos', null, 'kacykos1@gmail.com', 'kacper93', 'adadad', null, '2016-03-28 14:46:29', 'Pakistan', 'Abu Dhabi', 'male', '1980-11-14', null, 'no-image.jpg', '0', '23242424', '', null, 'Australia', null, 'active', null, null, null, null, '83.27.161.159', null, null, null, 'yes'), ('13', 'ajay', null, 'jainmca4444@gmail.com', 'red@12321', 'ETS', null, '2016-03-28 17:40:38', 'Pakistan', 'Lahore', 'male', '1980-04-09', null, 'no-image.jpg', '0', '898989899', '', null, 'Australia', null, 'active', null, null, null, null, '112.196.142.218', null, null, null, 'yes'), ('14', 'Peter Sturm', null, 'petersturm@bluewin.ch', 'petertester', 'Via Cantone', null, '2016-03-28 18:18:22', 'United States', 'new york', 'male', '1980-01-01', null, 'no-image.jpg', '0', '678768768768', '', null, 'United States', null, 'active', null, null, null, null, '46.127.154.34', null, null, null, 'yes'), ('15', 'Marcos', '', 'headbeatsoficial@gmail.com', 'admin123', 'Rua do Forte', null, '2016-03-28 18:33:36', 'Canada', 'Brasil', 'male', '1993-04-28', null, 'no-image.jpg', '0', '81995209352', '81984116104', null, 'Australia', null, 'active', null, '2016-03-28 18:52:53', '2016-04-03 06:44:26', null, '179.197.48.222', null, null, null, 'yes'), ('16', 'BrunaoXP', null, 'bruno@andrade.com', '741852963123456789', 'fadsfasdfasdf', null, '2016-03-28 19:11:36', 'United States', 'dfasdf', 'female', '1980-09-15', null, 'no-image.jpg', '0', '6456456456', '456456456456', null, 'Australia', null, 'active', null, null, null, null, '177.89.14.7', null, null, null, 'yes'), ('17', 'Hotel Mira Serra', null, 'jose.soares0276@gmail.com', '123456', 'RUA CALOUSTE GULBENKIAN, 12', null, '2016-03-28 19:36:29', 'United Kingdom', 'london', 'male', '1980-09-12', null, 'no-image.jpg', '0', '000000000', '', null, 'Australia', null, 'active', null, null, null, null, '37.189.200.185', null, null, null, 'yes'), ('18', 'Pedro Lianzres', '', 'rauccatoma@mott.pe', 'hola123abc', 'Calle los rosales', null, '2016-03-28 20:00:45', 'United States', 'lima', 'male', '1980-03-03', null, 'no-image.jpg', '0', '988998989898', '9898989898', null, 'Australia', null, 'active', null, null, null, null, '191.98.189.130', null, null, null, 'yes'), ('19', 'Shamim', null, 'shamimarnobjnu@gmail.com', '123456', 'gdfjfdf,fjghhfd', null, '2016-03-29 00:05:47', 'United States', 'new york', 'male', '1986-04-18', null, 'no-image.jpg', '0', '1234567890', '', null, 'United States', null, 'active', null, null, null, null, '45.64.137.26', null, null, null, 'yes'), ('20', 'Laakz Laakz', null, 'Laakz@hotmail.fr', 'LaakzLaakz', 'LaakzLaakzLaakz', null, '2016-03-29 00:59:45', 'United States', 'NEW YORK', 'male', '1995-07-25', null, 'no-image.jpg', '0', '067315854', 'Laakz', null, 'United States', null, 'active', null, null, null, null, '83.201.176.50', null, null, null, 'yes'), ('21', 'haris', null, 'j0k3rbih@gmail.com', 'sataras23', 'test', null, '2016-03-29 02:56:12', 'United States', 'new york', 'male', '1990-06-04', null, 'no-image.jpg', '0', '123512315151', '', null, 'United Kingdom', null, 'active', null, null, null, null, '77.77.216.98', null, null, null, 'yes'), ('22', 'asasas', null, 'demo@demo.com', 'Masterkey777', 'asasasasas', null, '2016-03-29 03:13:18', 'Pakistan', 'Abu Dhabi', 'male', '1973-06-03', null, 'no-image.jpg', '0', '232323', '23232323', null, 'Australia', null, 'active', null, null, null, null, '189.58.135.60', null, null, null, 'yes'), ('23', 'Joe Employee', null, 'imabotmail@gmail.com', '123456', '4902 N. MacDill Ave', null, '2016-03-29 05:51:44', 'United States', 'Tampa', 'male', '1980-01-01', null, 'no-image.jpg', '0', '8135551212', '8135551313', null, 'United States', null, 'active', null, null, null, null, '68.207.232.110', null, null, null, 'yes'), ('24', 'Deneme', null, 'haberizan@gmail.com', '1484310', 'Dgfssshhajksjdkdldkdkdkdjdkd', null, '2016-03-29 09:51:00', 'China', 'Hjkhbb', 'male', '1980-04-03', null, 'no-image.jpg', '0', '84839292938', '', null, 'Australia', null, 'active', null, null, null, null, '95.183.198.181', null, null, null, 'yes'), ('25', 'asd asd a', null, 'vbng@sdfvd.com', 'hahahaha', '555 lame', null, '2016-03-29 13:41:11', 'United States', 'georgia', 'male', '1980-09-28', null, 'no-image.jpg', '0', '5555555555', '', null, 'United States', null, 'active', null, null, null, null, '173.18.248.203', null, null, null, 'yes'), ('26', 'Leandro', null, 'lelyria@hotmail.com', '170886', 'Rua Leonildo Denari, 318', null, '2016-03-29 22:40:47', 'Australia', 'Sidney', 'male', '1986-08-17', null, 'no-image.jpg', '0', '8865988887', '56565656', null, 'Australia', null, 'active', null, null, null, null, '201.42.156.68', null, null, null, 'yes'), ('27', 'Gianfranco Devico', null, 'zanoxg@gmail.com', 'chicha12', 'España 100', null, '2016-03-31 06:04:32', 'United States', 'San Francisco', 'male', '1980-03-21', null, 'no-image.jpg', '0', '847594769047369', '', null, 'United States', null, 'active', null, null, null, null, '190.229.249.208', null, null, null, 'yes'), ('28', 'ÖZCAN ODABA?O?LU', null, 'ozcanodabasoglu@hotmail.com', 'hdh2009', 'Gazipa?a Mah. Zeytin Sok. Zeytinlik Apt. Sit. No:3/1 Ortahisar/Trabzon', null, '2016-03-31 11:22:24', 'United States', 'TRABZON', 'male', '1991-02-08', null, 'no-image.jpg', '0', '04623223565', '04623223565', null, 'United States', null, 'active', null, '2016-03-31 11:22:34', '2016-03-31 11:22:34', null, '46.154.208.120', null, null, null, 'yes'), ('29', 'Anshu', null, 'anshu@anshuverma.com', 'star123', 'sadasdasdas', null, '2016-03-31 11:39:58', 'Australia', 'sadasdas', 'male', '1989-01-29', null, 'no-image.jpg', '0', '989089089080980', '989089089080980', null, 'Australia', null, 'active', null, null, null, null, '202.54.248.160', null, null, null, 'yes'), ('30', 'NONG TIEN THANH', null, 'tienthanh5390@gmail.com', '123456hy', '2234234', null, '2016-03-31 19:56:04', 'United States', 'Ha Noi', 'male', '1980-11-18', null, 'no-image.jpg', '0', '234234234234', '23423424', null, 'United States', null, 'active', null, null, null, null, '117.5.76.67', null, null, null, 'yes'), ('32', 'Abdu Ravoof K', null, 'abduravoof@gmail.com', 'ravoof123', 'wefwe', null, '2016-03-31 23:35:26', 'Pakistan', 'Abu Dhabi', 'male', '1990-10-08', null, 'no-image.jpg', '0', '98988899989999', '9895292329', null, 'Australia', null, 'active', null, null, null, null, '180.215.122.100', null, null, null, 'yes'), ('33', 'Web Creative', null, 'contato@webcreative.com.br', 'phofafa15', 'Francisco Menino de Jesus', null, '2016-04-01 01:25:56', 'United States', 'Whashigton', 'male', '1996-11-22', null, 'no-image.jpg', '0', '12000000', '', null, 'United States', null, 'active', null, '2016-04-01 02:54:21', '2016-04-01 02:54:21', null, '177.9.52.188', null, null, null, 'yes'), ('35', 'V Babu Babu', null, 'babu2310@yahoo.com', '123456', 'Add1', null, '2016-04-01 17:55:19', 'United States', 'Newyork', 'female', '1976-01-01', null, 'no-image.jpg', '0', '9999999', '', null, 'United States', null, 'active', null, null, null, null, '110.227.226.134', null, null, null, 'yes'), ('36', 'Saiful', null, 'saiful@masterdesignbd.com', '123456', 'Dhaka', null, '2016-04-02 03:18:45', 'Pakistan', 'Abu Dhabi', 'male', '1986-11-08', null, 'no-image.jpg', '0', '87778899999', '', null, 'Pakistan', null, 'active', null, '2016-04-02 04:41:54', '2016-04-03 17:37:15', null, '103.230.62.226', null, null, null, 'yes'), ('37', 'Oswaldo Cabrera', null, 'ocabrera@websoftmex.com', 'cabrera8', 'Conocnido', null, '2016-04-02 05:49:14', 'United States', 'Leon', 'male', '1980-01-01', null, 'no-image.jpg', '0', '4777777777777', '', null, 'United States', null, 'active', null, null, null, null, '187.205.204.124', null, null, null, 'yes'), ('38', 'Mark', null, 'rk.catchway@gmail.com', '123456', 'hydsfdsafsadfasdfsadf', null, '2016-04-02 12:11:59', 'Australia', 'sydny', 'male', '1980-03-02', null, 'no-image.jpg', '0', '84998822444', '', null, 'Australia', null, 'active', null, null, null, null, '49.206.50.43', null, null, null, 'yes'), ('41', 'hicham rassif', null, 'hrassif@gmail.com', 'marocain', 'jsjsjsj', null, '2016-04-03 02:52:58', 'Pakistan', 'California', 'male', '1990-02-16', null, 'no-image.jpg', '0', '29292929292', '20202020202', null, 'United Arab Emirates', null, 'active', null, '2016-04-03 03:09:30', '2016-05-25 15:18:11', null, '105.139.98.16', null, null, null, 'yes'), ('42', 'sebastian', null, 'sebastian@districampo.com', 'Colombia1.', 'adrres', null, '2016-04-03 03:31:29', 'Canada', 'cccc', 'female', '1984-02-02', null, 'no-image.jpg', '0', '131232', '232232', null, 'Canada', null, 'active', null, null, null, null, '190.28.240.196', null, null, null, 'yes'), ('47', 'test user', null, 'testuser@test.com', 'testuser', 'test adress', null, '2016-04-03 03:44:55', 'China', 'test', 'male', '1980-04-02', null, 'no-image.jpg', '0', '06485974825', '', null, 'Australia', null, 'active', null, null, null, null, '105.157.149.43', null, null, null, 'yes'), ('48', 'dfasdfas', null, 'slemansh99@gmail.com', 'sleman123', 'sadfasdfsadf', null, '2016-04-03 15:31:36', 'Canada', 'werew', 'female', '1997-06-04', null, 'no-image.jpg', '0', '234232323', '', null, 'United Kingdom', null, 'active', null, '2016-04-03 15:35:44', '2016-04-03 15:37:20', null, '82.166.140.125', null, null, null, 'yes'), ('49', 'paderborn', null, 'biyik.men@googlemail.com', 'benimben', 'benimben44627', null, '2016-04-03 20:11:00', 'United Arab Emirates', 'uzuzu', 'female', '1980-02-02', null, 'no-image.jpg', '0', '017878787878787', '', null, 'Australia', null, 'active', null, '2016-04-10 14:49:02', '2016-04-10 18:21:33', null, '62.143.64.91', null, null, null, 'yes'), ('50', 'Rabson Takavarasha', null, 'rtakavarasha@gmail.com', '123@123', '123', null, '2016-04-04 13:55:06', 'United Kingdom', 'uygg', 'male', '1980-02-02', null, 'no-image.jpg', '0', '011000000', '011000000', null, 'Australia', null, 'active', null, null, null, null, '197.78.191.100', null, null, null, 'yes'), ('51', 'Shrikant', null, 'shrikant.talawar@gmail.com', 'shlr2015', 'India', null, '2016-04-04 21:08:00', 'United States', 'US', 'male', '1980-01-01', null, 'no-image.jpg', '0', '99', '', null, 'United States', null, 'active', null, null, null, null, '125.99.253.18', null, null, null, 'yes'), ('52', 'gombosvren', null, 'gombosvren@gmail.com', '08260826', 'Bagdgds', null, '2016-04-05 13:58:14', 'United States', 'gg', 'male', '1996-08-26', null, 'no-image.jpg', '0', '9656543543534', '45345435', null, 'Australia', null, 'active', null, null, null, null, '59.153.87.58', null, null, null, 'yes'), ('53', 'Mateo Agudelo', null, 'mateobedoyaagudelo@gmail.com', 'mateo199', 'Cr 50', null, '2016-04-06 08:12:16', 'Australia', 'Au', 'male', '1996-04-14', null, 'no-image.jpg', '0', '641981654981', '52165848/', null, 'Australia', null, 'active', null, null, null, null, '201.184.135.251', null, null, null, 'yes'), ('54', 'sayed ahmed', null, 'sayed.homeeg@gmail.com', 'sayed1212', '92 eltahrir street\n92 Eltahrir Street', null, '2016-04-06 12:04:09', 'China', 'fdsfsdf', 'male', '1981-01-01', null, 'no-image.jpg', '0', '43423423', 'fdsf', null, 'Australia', null, 'active', null, null, null, null, '82.201.186.129', null, null, null, 'yes'), ('55', 'nikoloz natssarishvili', null, 'nikanatsarishvili@yahoo.com', 'helperrr13', 'iasvhili', null, '2016-04-06 18:21:12', 'United Kingdom', 'California', 'male', '1996-10-13', null, 'no-image.jpg', '0', '558500088', '', null, 'China', null, 'active', null, null, null, null, '176.73.74.34', null, null, null, 'yes'), ('56', 'Al Emran', null, 'signup778@yahoo.com', '55423521', '18/G Nazir House, Tallabag, Dhanmondi', null, '2016-04-07 02:08:30', 'Pakistan', 'Lahore', 'male', '1980-02-16', null, 'no-image.jpg', '0', '8801625000066', '+8801625000066', null, 'Pakistan', null, 'active', null, null, null, null, '180.234.244.28', null, null, null, 'yes'), ('57', 'Rushabh', null, 'rushabh.shah328@gmail.com', '123456', 'Neminath', null, '2016-04-07 11:58:57', 'Australia', 'kkk', 'male', '1991-01-01', null, 'no-image.jpg', '0', '123456789', '', null, 'Australia', null, 'active', null, null, null, null, '223.255.245.113', null, null, null, 'yes'), ('58', 'Festus Iipito', null, 'festusiipito@gmail.com', 'franco14', 'none\nHibiscus Court', null, '2016-04-08 16:00:17', 'United States', 'neyyork', 'male', '1991-02-01', null, 'no-image.jpg', '0', '0813320770', '', null, 'United States', null, 'active', null, null, null, null, '41.182.252.100', null, null, null, 'yes'), ('59', 'kom', null, 'kom@hm.com', 'komkom', 'dffd', null, '2016-04-08 16:02:20', 'Australia', 'ffg', 'male', '1980-11-12', null, 'no-image.jpg', '0', '645', '64564', null, 'Australia', null, 'active', null, null, null, null, '122.179.62.96', null, null, null, 'yes'), ('60', 'Jay Alame', null, 'jay@pixelthon.com', 'budbud', '41419 Pear St. Suite 3', null, '2016-04-08 23:10:17', 'United States', 'Murrieta', 'male', '1971-06-18', null, 'no-image.jpg', '0', '9518880121', '', null, 'Australia', null, 'active', null, '2016-04-08 23:12:31', '2016-04-08 23:12:31', null, '172.98.84.189', null, null, null, 'yes'), ('61', 'Mio nome completo', null, 'test@test.ch', 'ore24e25', 'attuale indirizzo', null, '2016-04-10 00:22:17', 'Pakistan', 'Lahore', 'male', '1980-10-17', null, 'no-image.jpg', '0', '09111', '', null, 'Australia', null, 'active', null, null, null, null, '213.55.184.198', null, null, null, 'yes'), ('65', 'Noufal', null, 'noufalvp@gmail.com', 'abcchikku', 'RIyadh', null, '2016-04-11 17:19:58', 'United Arab Emirates', 'RIAYDH', 'male', '1981-05-31', null, 'no-image.jpg', '0', '966542651001', '', null, 'United States', null, 'active', null, null, null, null, '46.44.112.62', null, null, null, 'yes'), ('66', 'ayhan ergun', null, 'goldturk88@gmail.com', '123456789', 'asdasdbahbsdhabsd', null, '2016-04-12 01:34:18', 'United Kingdom', 'sdada', 'male', '1980-01-01', null, 'no-image.jpg', '0', '0545454545', '5045454245', null, 'Australia', null, 'active', null, null, null, null, '78.164.61.110', null, null, null, 'yes'), ('67', 'fernando', null, 'imagina.net.pe@gmail.com', 'tassadark', 'los pinos l26', null, '2016-04-12 10:34:48', 'Canada', 'sdsd', 'male', '1990-11-05', null, 'no-image.jpg', '0', '787878', '45454545', null, 'China', null, 'active', null, null, null, null, '190.43.106.244', null, null, null, 'yes'), ('68', 'Kharl', null, 'klataza@gmail.com', 'kharl.com', 'test', null, '2016-04-12 14:48:43', 'United States', 'illinois', 'male', '1980-10-15', null, 'no-image.jpg', '0', '09234234', '', null, 'Australia', null, 'active', null, null, null, null, '180.191.119.106', null, null, null, 'yes'), ('69', 'fullname', null, 'email@gmail.com', 'pass1234', 'current Address', null, '2016-04-13 18:34:11', 'United Arab Emirates', 'cityname', 'male', '1979-01-01', null, 'no-image.jpg', '0', '9876543210', '', null, 'China', null, 'active', null, null, null, null, '122.174.107.168', null, null, null, 'yes'), ('70', 'Habib Jiwan', null, 'habibg198@gmail.com', 'herbeeb123', 'Jalan', null, '2016-04-13 21:39:42', 'Australia', 'Legit', 'male', '1996-06-17', null, 'no-image.jpg', '0', '01137409435', '', null, 'Australia', null, 'active', null, '2016-04-13 22:24:55', '2016-04-13 22:24:55', null, '180.200.233.250', null, null, null, 'yes'), ('71', 'Salih Karadeniz', null, 'salih@vemedya.com', '12345679', 'Gaziantep', null, '2016-04-14 15:13:54', 'Canada', 'gaziantep', 'female', '1968-01-01', null, 'no-image.jpg', '0', '05323571472', '', null, 'Canada', null, 'active', null, null, null, null, '78.166.140.99', null, null, null, 'yes'), ('74', 'std', null, 'std@gmail.com', 'student', 'dsssfdfd', null, '2016-04-15 11:39:43', 'United States', 'aaaa', 'female', '1995-05-05', null, 'no-image.jpg', '0', '97965676', '6767676', null, 'Canada', null, 'active', null, null, null, null, '122.179.54.139', null, null, null, 'yes'), ('75', 'Arjun Kumar', null, 'arjun.kumar21@gmail.com', 'sony2003', 'B616, B Block, Sterling Park Appartment,Kodigehalli Main Road\nSahakar nagar', null, '2016-04-15 15:22:03', 'United States', 'iselin', 'male', '1980-08-21', null, 'no-image.jpg', '0', '8123889419', '', null, 'United States', null, 'active', null, null, null, null, '122.167.55.209', null, null, null, 'yes'), ('76', 'nagendra yadav', null, 'nagendra.yadav@sparxitsolutions.com', '123456', 'A2', null, '2016-04-15 17:31:45', 'Australia', 'MELBORN', 'male', '1992-01-01', null, 'no-image.jpg', '0', '8545454578', '8585858585', null, 'Australia', null, 'active', null, '2016-04-15 17:33:30', '2016-04-15 17:33:30', null, '180.151.15.82', null, null, null, 'yes'), ('78', 'Deneme deneme', null, 'x7even@gmail.com', 'asd123', 'deneme', null, '2016-04-16 12:05:57', 'Canada', 'CANADA', 'male', '1980-04-17', null, 'no-image.jpg', '0', '905051990000', '', null, 'China', null, 'active', null, null, null, null, '185.84.180.61', null, null, null, 'yes'), ('79', 'MD MAHABUB ALAM RUBEL', null, 'mzmlhaque61@gmail.com', 'This123Pass', 'Parulitola\nTarakanda', null, '2016-04-17 08:31:40', 'Pakistan', 'Islamabad', 'male', '1980-02-09', null, 'no-image.jpg', '0', '01713561290', '525562411', null, 'Australia', null, 'active', null, null, null, null, '103.52.134.14', null, null, null, 'yes'), ('80', 'Alex Kehr', null, 'hello@alexkehr.com', 'Piuma123!!', '10989 Rochester Avenue\nSuite 104', null, '2016-04-17 23:21:48', 'United States', 'Los Angeles', 'male', '1989-12-26', null, 'no-image.jpg', '0', '3109245269', '', null, 'United States', null, 'active', null, null, null, null, '77.166.103.98', null, null, null, 'yes'), ('81', 'Gouse', null, 'teju432@gmail.com', 'asdf1234', '9-4-131/1/N/104, Neeraja Colony, Tolichowky, Hyderabad', null, '2016-04-18 15:25:15', 'United Kingdom', 'Londin', 'male', '1980-10-17', null, 'no-image.jpg', '0', '9999999999', '', null, 'United Kingdom', null, 'active', null, '2016-04-18 15:35:52', '2016-04-25 14:59:33', null, '14.141.43.6', null, null, null, 'yes'), ('82', 'Doan', null, 'tuandoanmanh@gmail.com', 'manhtuan', '101-b1 nghia tan - cau giay', null, '2016-04-19 12:05:13', 'China', 'Hong Kong', 'female', '1990-04-03', null, 'no-image.jpg', '0', '86883838383883', '', null, 'Australia', null, 'active', null, null, null, null, '1.55.103.137', null, null, null, 'yes'), ('83', 'Tiago', null, 'tiago@costa.im', 'costa159753', 'Avenida almirante barroso', null, '2016-04-20 08:54:24', 'Canada', 'Belen', 'male', '1984-01-04', null, 'no-image.jpg', '0', '91981421862', '', null, 'China', null, 'active', null, null, null, null, '177.13.234.20', null, null, null, 'yes'), ('84', 'Vehbi', null, 'barisvehbi@gmail.com', 'brs123', 'Bar??', null, '2016-04-22 03:42:30', 'Pakistan', 'Islamabad', 'male', '1994-03-18', null, 'no-image.jpg', '0', '05370372491', '05370372491', null, 'Australia', null, 'active', null, null, null, null, '78.177.195.239', null, null, null, 'yes'), ('85', 'VIpin Agarwal', null, 'vipin10agarwal@gmail.com', '123456', 'ssssss', null, '2016-04-22 18:40:13', 'Pakistan', 'Austin', 'male', '1980-03-17', null, 'no-image.jpg', '0', '8003366789', '8003366789', null, 'Australia', null, 'active', null, null, null, null, '122.161.102.237', null, null, null, 'yes'), ('86', 'Sergey', null, 'DaredevilX@yandex.ru', 'smirnoff', 'An der Onsel 3', null, '2016-04-23 03:06:40', 'Pakistan', 'Abu Dhabi', 'male', '1988-04-07', null, 'no-image.jpg', '0', '678567845673456', '', null, 'Australia', null, 'active', null, null, null, null, '37.201.193.180', null, null, null, 'yes'), ('87', 'Deli Atoia Abuda', null, 'Friedrich@google.com', 'password', '9 chandos road\nLUTON', null, '2016-04-24 22:26:40', 'United Kingdom', 'luton', 'male', '1980-02-08', null, 'no-image.jpg', '0', '0192837465', '', null, 'United Kingdom', null, 'active', null, null, null, null, '90.216.116.244', null, null, null, 'yes'), ('88', 'qdeewqd wed', null, 'a.alknanj@gmail.com', '123123', 'rsfervcddsc', null, '2016-04-26 00:09:05', 'Pakistan', 'Abu Dhabi', 'female', '1980-03-17', null, 'no-image.jpg', '0', '42123432143', '2314', null, 'Australia', null, 'active', null, null, null, null, '66.85.139.246', null, null, null, 'yes'), ('89', 'Max Azarcon', null, 'maxazarcon90@gmail.com', 'etreetdurer', '3939 Glenwood Ave\nApt 354', null, '2016-04-26 01:55:22', 'United States', 'Raleigh', 'male', '1990-12-21', null, 'no-image.jpg', '0', '9842043030', '', null, 'United States', null, 'active', null, null, null, null, '24.199.153.36', null, null, null, 'yes'), ('90', 'abcd zyx', null, 'abc@abc.com', '123456', 'aaaaaa', null, '2016-04-28 15:03:00', 'China', 'aaaaa', 'male', '1993-04-02', null, 'no-image.jpg', '0', '6155547895', '', null, 'Australia', null, 'active', null, null, null, null, '119.235.9.42', null, null, null, 'yes'), ('91', 'Stanislas BELLOT', null, 'stanidem@yahoo.fr', 'Plizouh@2016', 'Nagrin', null, '2016-05-02 06:45:03', 'United States', 'Texas', 'male', '1986-04-07', null, 'no-image.jpg', '0', '67249609', '', null, 'Canada', null, 'active', null, '2016-05-02 06:57:35', '2016-05-02 06:57:35', null, '154.66.171.18', null, null, null, 'yes'), ('92', 'Testat', null, 'eng.hesham.abdelglil@gmail.com', '123456789', 'test', null, '2016-05-02 11:53:02', 'United Kingdom', 'name', 'male', '1980-10-11', null, 'no-image.jpg', '0', '1454686764', '', null, 'Canada', null, 'active', null, '2016-05-02 12:31:55', '2016-06-03 12:41:29', null, '105.93.45.53', null, null, null, 'yes'), ('93', 'qartes', null, 'michhael58g@gmail.com', 'michhael58g', 'tesy', null, '2016-05-03 05:54:41', 'Australia', 'wien', 'female', '1980-03-02', null, 'no-image.jpg', '0', '123654789', '', null, 'Australia', null, 'active', null, null, null, null, '82.216.142.69', null, null, null, 'yes'), ('94', 'sayali', null, 'sayali@srvmedia.com', 'SAYALI21', 'pune', null, '2016-05-03 10:35:10', 'Australia', 'Canberra', 'female', '1990-12-27', null, 'no-image.jpg', '0', '9090909090', '', null, 'United States', null, 'active', null, '2016-05-03 11:00:57', '2016-05-03 11:00:57', null, '113.193.26.206', null, null, null, 'yes'), ('95', 'john Doe', '', 'john.doe@test.com', '123456', 'my home', null, '2016-05-04 16:39:17', 'Australia', 'hom', 'male', '1984-03-02', null, 'no-image.jpg', '0', '00212137881', '', null, 'China', null, 'active', null, null, null, null, '78.185.136.75', null, null, null, 'yes'), ('97', 'jj', null, 'jj@jj.com', 'jj.com', 'ddd', null, '2016-05-05 15:54:34', 'Pakistan', 'California', 'male', '1996-03-02', null, 'no-image.jpg', '0', '0791223156', '', null, 'China', null, 'active', null, null, null, null, '41.170.18.68', null, null, null, 'yes'), ('98', 'Dtest Er', null, 'dtest@test.com', '123456', '123 Main St Grove City, PA 16127', null, '2016-05-05 22:55:28', 'United States', 'Grove City', 'male', '1984-05-13', null, 'no-image.jpg', '0', '54261494956', '', null, 'United States', null, 'active', null, null, null, null, '71.46.234.62', null, null, null, 'yes'), ('99', 'Kevin de la Horra', null, 'kevin@kevin.com', 'AZ022104', 'La rosa numero', null, '2016-05-06 01:02:08', 'United States', 'Seattle', 'male', '1980-03-17', null, 'no-image.jpg', '0', '659554584', '', null, 'United States', null, 'active', null, null, null, null, '87.222.99.240', null, null, null, 'yes'), ('100', 'Sean brogan', null, 'seanbrogan123@gmail.com', 'sean123', '18 thirlmere drive', null, '2016-05-06 18:22:12', 'United Kingdom', 'wirral', 'male', '1979-01-01', null, 'no-image.jpg', '0', '090909090909', '', null, 'Australia', null, 'active', null, null, null, null, '81.142.74.238', null, null, null, 'yes'), ('102', 'U alan', null, 'kalpsiz025@gmail.com', '12345678', 'adres buraya gelecek', null, '2016-05-07 22:39:29', 'Pakistan', 'Islamabad', 'male', '1983-03-19', null, 'no-image.jpg', '0', '4444444444444', '4444444444', null, 'China', null, 'active', null, null, null, null, '82.222.142.61', null, null, null, 'yes'), ('103', 'markettom', null, 'kifonagi@leeching.net', '221009', 'dsdsasdads', null, '2016-05-08 11:15:53', 'Canada', 'Canada', 'male', '1980-03-18', null, 'no-image.jpg', '0', '54433243432', '', null, 'Canada', null, 'active', null, null, null, null, '90.188.91.247', null, null, null, 'yes'), ('105', 'Teste', null, 'test@test.com.br', '123456', 'test', null, '2016-05-10 03:10:00', 'United States', 'SP', 'male', '1998-01-01', null, 'no-image.jpg', '0', '111111111111111', '', null, 'Canada', null, 'active', null, null, null, null, '187.182.216.23', null, null, null, 'yes'), ('106', 'Alex muurphy', null, 'marufbd.mokhlesh@gmail.com', '123456', 'New York', null, '2016-05-11 11:34:48', 'United States', 'NY', 'male', '1988-03-27', null, 'no-image.jpg', '0', '123456', '', null, 'United States', null, 'active', null, null, null, null, '114.134.89.35', null, null, null, 'yes'), ('107', 'Gandhi', null, 'gandhi.vera@gmail.com', '123456', 'Lima', null, '2016-05-12 07:34:23', 'United States', 'los angeles', 'male', '1987-02-02', null, 'no-image.jpg', '0', '992012629', '', null, 'China', null, 'active', null, null, null, null, '200.121.233.112', null, null, null, 'yes'), ('108', 'dddddddddddddddd', null, 'gattas.it.1984@gmail.com', '2764389', 'xxxxxxxxxxxxxx', null, '2016-05-12 23:30:55', 'China', 'china', 'male', '1980-05-08', null, 'no-image.jpg', '0', '009725589745', '', null, 'Australia', null, 'active', null, null, null, null, '37.76.195.123', null, null, null, 'yes'), ('109', 'jean val', null, 'jeanval123@yopmail.com', '2bXFOSpSFEwy', 'dsd', null, '2016-05-13 20:24:42', 'Canada', 'paris', 'male', '1996-02-02', null, 'no-image.jpg', '0', '077777888', '', null, 'Canada', null, 'active', null, null, null, null, '159.50.16.163', null, null, null, 'yes'), ('110', 'Raakesh Kumar', null, 'kumarrakesh04.07@gmail.com', 'redhat', 'D4/26 Vashisth Park', null, '2016-05-13 21:13:28', 'United Kingdom', 'New Delhi', 'male', '1980-08-12', null, 'no-image.jpg', '0', '9015845820', '', null, 'United Kingdom', null, 'active', null, null, null, null, '43.247.41.97', null, null, null, 'yes'), ('111', 'shaik jilani', null, 'asfsoftwaresolutions@gmail.com', 'asf@2016', 'kdjfsadfjalsdklkjasfdl', null, '2016-05-15 01:20:46', 'United States', 'akalsdfjasdfj', 'male', '1978-03-02', null, 'no-image.jpg', '0', '0123456789', '', null, 'United States', null, 'active', null, null, null, null, '49.206.6.13', null, null, null, 'yes'), ('113', 'Kevin de la Horra', null, 'kevin@kevin.es', 'AZ022104', 'Clement', null, '2016-05-15 16:32:39', 'United States', 'Beverly Hills', 'male', '1980-07-15', null, 'no-image.jpg', '0', '653221235', '', null, 'United States', null, 'active', null, null, null, null, '87.222.110.133', null, null, null, 'yes'), ('114', 'asmaa', null, 'wendywang0305@gmail.com', '03051992', 'Ajman', null, '2016-05-16 17:04:46', 'Canada', 'toronto', 'male', '1980-01-01', null, 'no-image.jpg', '0', '123', '', null, 'Australia', null, 'active', null, '2016-05-16 17:06:49', '2016-05-16 17:25:32', null, '176.205.8.220', null, null, null, 'yes'), ('115', 'test', null, 'test@test.com', 'testtest', 'test', null, '2016-05-16 17:17:43', 'Pakistan', 'Boston', 'male', '1980-11-19', null, 'no-image.jpg', '0', '212321234', '', null, 'Australia', null, 'active', null, null, null, null, '78.182.167.205', null, null, null, 'yes'), ('116', 'biniyam', null, 'biniyam2010@gmail.com', '123456', 'ethiopia', null, '2016-05-16 17:23:56', 'United States', 'virgenia', 'male', '1985-01-01', null, 'no-image.jpg', '0', '0911996922', '0911996922', null, 'Canada', null, 'active', null, null, null, null, '197.156.67.126', null, null, null, 'yes'), ('117', 'Abraiz Khan', null, 'abraizkhan94@gmail.com', '090078601', 'dusadkjasdjksajkdjaskdjkasjkdasksjdkjas', null, '2016-05-16 22:51:31', 'Pakistan', 'Islamabad', 'male', '1994-12-06', null, 'no-image.jpg', '0', '03472904345', '3472904345', null, 'Pakistan', null, 'active', null, '2016-06-02 16:07:20', '2016-06-02 16:07:20', null, '119.159.29.27', null, null, null, 'yes'), ('118', 'razor', null, 'drinkingherredtear@gmail.com', 'howcouldiknow', 'sdfdsfd', null, '2016-05-17 03:29:40', 'Canada', 'sdfd', 'male', '1990-07-03', null, 'no-image.jpg', '0', '2342220754', '+1 (234) 222 07', null, 'Canada', null, 'active', null, null, null, null, '103.242.218.9', null, null, null, 'yes'), ('119', 'Anibal Centurion', null, 'acenturion@kaptenn.com', '123456', 'Morales 1505 e/Tajy', null, '2016-05-17 17:30:52', 'Canada', 'UTah', 'male', '1994-05-10', null, 'no-image.jpg', '0', '044556123456', '12347888621', null, 'Canada', null, 'active', null, null, null, null, '190.23.201.33', null, null, null, 'yes'), ('121', 'Patryk Kloz', null, 'van.hallgate@gmail.com', 'hallmade99', 'Example Street 00', null, '2016-05-17 18:31:32', 'United States', 'City', 'male', '1990-08-14', null, 'no-image.jpg', '0', '485113243244444', '', null, 'United States', null, 'active', null, '2016-05-18 16:26:35', '2016-05-18 16:26:35', null, '89.71.210.62', null, null, null, 'yes'), ('122', 'Job seeker', null, 'temp2@gow.blog.br', 'temporary', 'Avenida Rio Branco', null, '2016-05-19 00:31:47', 'United States', 'Belo Horizonte', 'male', '1956-05-14', null, 'no-image.jpg', '0', '2135534801', '3199276880', null, 'Australia', null, 'active', null, null, null, null, '189.59.173.105', null, null, null, 'yes'), ('123', 'admin', null, 'reda@reda.rd', 'admin123', 'admin123 admin123', null, '2016-05-22 12:39:40', 'Canada', 'hyyh', 'female', '1981-11-16', null, 'no-image.jpg', '0', '0528283983', '8086086680', null, 'China', null, 'active', null, null, null, null, '41.250.185.71', null, null, null, 'yes'), ('124', 'parkkichul', null, 'mummers@naver.com', 'mummers', 'sdfsdf', null, '2016-05-23 15:42:06', 'China', 'dfdf', 'male', '1982-01-16', null, 'no-image.jpg', '0', '01029993333', '', null, 'Canada', null, 'active', null, '2016-05-23 15:56:22', '2016-05-25 17:14:32', null, '121.134.17.225', null, null, null, 'yes'), ('125', 'ina', null, 'sxmiah@hotmail.de', 'huhu123', 'qfqwf', null, '2016-05-24 17:36:03', 'United States', 'rrfqwtrqwtr', 'female', '1980-02-19', null, 'no-image.jpg', '0', '242424214', '', null, 'China', null, 'active', null, null, null, null, '88.217.84.59', null, null, null, 'yes'), ('126', 'Pepito Piguave', null, 'pepitopiguave@yopmail.com', 'Berlin1975', 'Manchester', null, '2016-05-25 00:32:51', 'United Kingdom', 'Manchester', 'male', '1975-01-01', null, 'no-image.jpg', '0', '8752423684', '', null, 'United Kingdom', null, 'active', null, null, null, null, '181.113.145.90', null, null, null, 'yes'), ('127', 'Shiva', null, 'shivkumar.85@gmail.com', '123456', 'Test', null, '2016-05-25 17:07:07', 'United States', 'Mandya', 'male', '1985-12-02', null, 'no-image.jpg', '0', '9972271000', '', null, 'United States', null, 'active', null, null, null, null, '122.171.75.250', null, null, null, 'yes'), ('128', 'kasun', null, 'viyanarehan@gmail.com', '1234567', 'xxxxxxxxxxx', null, '2016-05-26 00:20:07', 'United Arab Emirates', 'vmb', 'male', '1996-05-10', null, 'no-image.jpg', '0', '784804951', '', null, 'Australia', null, 'active', null, null, null, null, '123.231.124.220', null, null, null, 'yes'), ('129', 'altan kastalmis', null, 'bahanem01@hotmail.com', '2001458006', 'ba?ak mahallesi 1010 sokak no 4', null, '2016-05-27 19:04:49', 'United Arab Emirates', 'dubai', 'male', '1997-01-01', null, 'no-image.jpg', '0', '05427183688', '5427183688', null, 'Australia', null, 'active', null, null, null, null, '78.187.26.209', null, null, null, 'yes'), ('130', 'Gray Jumba', null, 'gjumba@onion.co.ke', '604112100', '369-00100 Nairobi', null, '2016-05-28 22:59:08', 'United States', 'New York', 'male', '1994-05-24', null, 'no-image.jpg', '0', '0718199017', '', null, 'United States', null, 'active', null, '2016-05-28 23:15:36', '2016-05-28 23:15:36', null, '154.78.22.234', null, null, null, 'yes'), ('132', 'neyber becerra zapata', null, 'enjey11@gmail.com', '123456', 'Mz. J Lt. 10 Calle 20 St. 1', null, '2016-06-01 03:39:36', 'Pakistan', 'Hong Kong', 'male', '1987-06-11', null, 'no-image.jpg', '0', '21321321321', '12312321321', null, 'China', null, 'active', null, null, null, null, '190.236.166.115', null, null, null, 'yes'), ('133', 'Full Name', null, 'test@test999.com', 'test9999', 'PPk dfjflkjl', null, '2016-06-02 12:50:25', 'United States', 'California', 'male', '1979-01-01', null, 'no-image.jpg', '0', '232489083380890', '', null, 'Australia', null, 'active', null, null, null, null, '118.163.199.146', null, null, null, 'yes'), ('134', 'lvcmuz', null, 'lvcmuz@yahoo.com', '123456', 'Kabwata', null, '2016-06-08 15:05:33', 'Australia', 'Austria', 'male', '1980-02-15', null, 'no-image.jpg', '0', '2609500043', '', null, 'Australia', null, 'active', null, '2016-06-08 15:08:07', '2016-06-08 15:08:07', null, '41.72.105.130', null, null, null, 'yes'), ('135', 'zgh', null, 'KheireddineZGH@gmail.com', 'ram512mb', 'Cite 40/70/800 logts Bougaa', null, '2016-06-08 23:40:44', 'United Arab Emirates', 'Setif', 'male', '1991-06-12', null, 'no-image.jpg', '0', '0553480471', '553480471', null, 'United Arab Emirates', null, 'active', null, null, null, null, '105.103.134.133', null, null, null, 'yes'), ('136', 'Larry Barry', null, 'rectus1960@yahoo.com', '234567', '2, samaru close', null, '2016-06-09 18:59:07', 'United States', 'atlanta', 'male', '2000-01-01', null, 'no-image.jpg', '0', '234087237076', '073234098', null, 'United States', null, 'active', null, '2016-06-09 19:07:03', '2016-06-10 18:09:39', null, '41.206.1.9', null, null, null, 'yes'), ('137', 'Casper Ved', null, 'nespeopes@gmail.com', 'nes12345', 'fdsafdsa', null, '2016-06-09 23:55:17', 'Canada', 'fdsa', 'male', '1993-06-02', null, 'no-image.jpg', '0', '4321432141', '', null, 'Canada', null, 'active', null, null, null, null, '121.88.98.246', null, null, null, 'yes'), ('138', 'praveen dokania', null, 'praveen.dokania1@gmail.com', '123456', 'jaynagar 7th block', null, '2016-06-10 23:41:39', 'Australia', 'bangalore', 'male', '1980-01-18', null, 'no-image.jpg', '0', '8880784111', '', null, 'Australia', null, 'active', null, null, null, null, '122.171.204.186', null, null, null, 'yes'), ('139', 'fdsa', null, 'aa@aa.com', '123456', 'fdsafds', null, '2016-06-11 22:01:01', 'Pakistan', 'Abu Dhabi', 'male', '1984-02-17', null, 'no-image.jpg', '0', '453543', '', null, 'Canada', null, 'active', null, null, null, null, '121.88.98.246', null, null, null, 'yes'), ('142', 'qsaf', null, 'zied.ds@hh.ds', '123456', 'qsf', null, '2016-06-15 14:06:39', 'Canada', 'sqdfqsf', 'male', '1980-08-13', null, 'no-image.jpg', '0', '6448484848', '', null, 'Australia', null, 'active', null, '2016-06-15 14:10:30', '2016-06-15 14:19:21', null, '41.228.12.180', null, null, null, 'yes');
COMMIT;

-- ----------------------------
--  Table structure for `pp_job_titles`
-- ----------------------------
DROP TABLE IF EXISTS `pp_job_titles`;
CREATE TABLE `pp_job_titles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_job_titles`
-- ----------------------------
BEGIN;
INSERT INTO `pp_job_titles` VALUES ('1', 'Web Designer', 'Web Designer'), ('2', 'Web Developer', 'Web Developer'), ('3', 'Graphic Designer', 'Graphic Designer'), ('4', 'Project Manager', 'Project Manager'), ('5', 'Network Administrator', 'Network Administrator'), ('6', 'Network Engineer', 'Network Engineer'), ('7', 'Software Engineer', 'Software Engineer'), ('8', 'System Administrator', 'System Administrator'), ('9', 'System Analyst', 'System Analyst');
COMMIT;

-- ----------------------------
--  Table structure for `pp_newsletter`
-- ----------------------------
DROP TABLE IF EXISTS `pp_newsletter`;
CREATE TABLE `pp_newsletter` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `email_name` varchar(50) DEFAULT NULL,
  `from_name` varchar(60) DEFAULT NULL,
  `from_email` varchar(120) DEFAULT NULL,
  `email_subject` varchar(100) DEFAULT NULL,
  `email_body` text,
  `email_interval` int(4) DEFAULT NULL,
  `status` enum('inactive','active') DEFAULT 'active',
  `dated` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `pp_post_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `pp_post_jobs`;
CREATE TABLE `pp_post_jobs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `employer_ID` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `company_ID` int(11) NOT NULL,
  `industry_ID` int(11) NOT NULL,
  `pay` varchar(60) NOT NULL,
  `dated` date NOT NULL,
  `sts` enum('inactive','pending','blocked','active') NOT NULL DEFAULT 'pending',
  `is_featured` enum('no','yes') NOT NULL DEFAULT 'no',
  `country` varchar(100) NOT NULL,
  `last_date` date NOT NULL,
  `age_required` varchar(50) NOT NULL,
  `qualification` varchar(60) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `job_mode` enum('Home Based','Part Time','Full Time') NOT NULL DEFAULT 'Full Time',
  `vacancies` int(3) NOT NULL,
  `job_description` longtext NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_phone` varchar(30) NOT NULL,
  `viewer_count` int(11) NOT NULL DEFAULT '0',
  `job_slug` varchar(255) DEFAULT NULL,
  `ip_address` varchar(40) DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL,
  `required_skills` varchar(255) DEFAULT NULL,
  `email_queued` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `job_search` (`job_title`,`job_description`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_post_jobs`
-- ----------------------------
BEGIN;
INSERT INTO `pp_post_jobs` VALUES ('1', '1', 'Web Designer', '1', '22', '81000-100000', '2016-03-11', 'active', 'yes', 'United States', '2016-07-11', '', 'BA', '3', 'New York', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex.', '', '', '', '0', 'mega-technologies-jobs-in-new york-web-designer-1', '115.186.165.234', null, null, 'css, html, js, jquery', '0'), ('2', '1', 'Php Developer', '1', '22', '41000-50000', '2016-03-11', 'active', 'yes', 'United States', '2016-07-11', '', 'MA', '3', 'New York', 'Full Time', '3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex.', '', '', '', '0', 'mega-technologies-jobs-in-new york-php-developer-2', '115.186.165.234', null, null, 'php, js, jquery, html', '0'), ('3', '2', 'Java Developer', '2', '22', '16000-20000', '2016-03-11', 'active', 'yes', 'United States', '2016-07-11', '', 'BA', '2', 'New York', 'Part Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in. Nulla at viverra metus, id porttitor nulla. In et arcu id felis eleifend auctor vitae a justo. Nullam eleifend, purus id hendrerit tempus, massa elit vehicula metus, pharetra elementum lectus elit ac felis. Sed fermentum luctus aliquet. Vestibulum pulvinar ornare ipsum, gravida condimentum nulla luctus sit amet. Sed tempor eros a tempor faucibus. Proin orci tortor, placerat sit amet elementum sit amet, ornare vel urna.', '', '', '', '0', 'it-pixels-jobs-in-new york-java-developer-3', '115.186.165.234', null, null, 'js, php, html, css', '0'), ('4', '3', 'Dot Net Developer', '3', '22', '61000-70000', '2016-03-11', 'active', 'yes', 'Australia', '2016-07-11', '', 'Certification', '4', 'Sydney', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'info-technologies-jobs-in-sydney-dot-net-developer-4', '115.186.165.234', null, null, '.net, mysql, php, html, css', '0'), ('5', '4', 'Front End Developer', '4', '22', '61000-70000', '2016-03-11', 'active', 'no', 'China', '2016-07-11', '', 'BS', 'Fresh', 'Hong Kong', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'some-it-company-jobs-in-hong kong-front-end-developer-5', '115.186.165.234', null, null, 'html, css, js, jquery, owl, photoshop', '0'), ('6', '5', 'Head Of Digital Marketing', '5', '5', '21000-25000', '2016-03-11', 'active', 'no', 'United Arab Emirates', '2016-07-11', '', 'MS', 'Fresh', 'Dubai', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'abc-it-tech-jobs-in-dubai-head-of-digital-marketing-6', '101.50.114.8', null, null, 'html, seo, social media', '0'), ('7', '6', 'Graphic Designer Adobe Indesign Expert', '6', '22', 'Trainee Stipend', '2016-03-11', 'active', 'no', 'United States', '2016-07-11', '', 'BS', '3', 'New York', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'def-it-company-jobs-in-new york-graphic-designer-adobe-indesign-expert-7', '101.50.114.8', null, null, 'photoshop, illustrator, indesign, css, html', '0'), ('8', '7', 'Teachers And Administration Staff', '7', '5', '41000-50000', '2016-03-11', 'active', 'no', 'United Arab Emirates', '2016-07-11', '', 'Certification', '3', 'Dubai', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'ghi-company-jobs-in-dubai-teachers-and-administration-staff-8', '101.50.114.8', null, null, 'marketing', '0'), ('9', '8', 'Graphic Designer', '8', '22', '36000-40000', '2016-03-11', 'active', 'no', 'United States', '2016-07-11', '', 'Diploma', '1', 'New York', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'jkl-company-jobs-in-new york-graphic-designer-9', '101.50.114.8', null, null, 'photoshop, illustrator, indesign, html, css', '0'), ('10', '9', 'Front End Developers', '9', '22', '61000-70000', '2016-03-11', 'active', 'no', 'United States', '2016-07-11', '', 'Certification', '3', 'New York', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'mno-company-jobs-in-new york-front-end-developers-10', '101.50.114.8', null, null, 'html, css, jquery, js', '0'), ('11', '10', 'Seo Specialist', '10', '5', '36000-40000', '2016-03-11', 'active', 'no', 'Pakistan', '2016-07-11', '', 'BE', '4', 'Islamabad', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'mnt-comapny-jobs-in-islamabad-seo-specialist-11', '101.50.114.8', null, null, 'seo, sem, smm, google adward', '0'), ('12', '11', 'Web Design / Frontend Developer', '11', '16', '51000-60000', '2016-03-11', 'active', 'no', 'United States', '2016-07-11', '', 'BA', '3', 'New York', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'mnf-comapny-jobs-in-new york-web-design-frontend-developer-12', '101.50.114.8', null, null, 'html, css, photoshop, illustrator, js', '0'), ('13', '12', 'Account Officer', '12', '18', '41000-50000', '2016-03-12', 'active', 'no', 'United States', '2016-07-12', '', 'MS', 'Fresh', 'New York', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.<br />\n<br />\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', '', '', '', '0', 'qwe-company-jobs-in-new york-account-officer-13', '115.186.165.234', null, null, 'accounting, marketing, ms office', '0'), ('14', '13', 'Call Center Operator', '13', '10', '51000-60000', '2016-03-12', 'active', 'no', 'United States', '2016-07-12', '', 'Certification', '4', 'Los Angeles', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.<br />\n<br />\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', '', '', '', '0', 'asd-company-jobs-in-los angeles-call-center-operator-14', '115.186.165.234', null, null, 'marketting, ms office, mysql', '0'), ('15', '14', 'Hr Specilest', '14', '18', '51000-60000', '2016-03-12', 'active', 'no', 'United States', '2016-07-12', '', 'MBA', '3', 'Las Vegas', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.<br />\n<br />\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', '', '', '', '0', 'xcv-company-jobs-in-las vegas-hr-specilest-15', '115.186.165.234', null, null, 'ms office, html, css, mysql', '0'), ('16', '15', 'Wanted Php Developer', '15', '22', '26000-30000', '2016-03-28', 'pending', 'no', 'Australia', '2016-07-29', '', 'HSSC', '1', 'Belgaum', 'Full Time', '5', 'aadfsfafdasf', '', '', '', '0', 'unique-solutions-jobs-in-belgaum-wanted-php-developer-16', '122.171.222.168', null, null, 'php, mysql', '0'), ('17', '18', 'Informática', '18', '40', '450000 or above', '2016-03-29', 'pending', 'no', 'United Kingdom', '2016-07-29', '', 'Diploma', 'Fresh', 'Tamandare', 'Part Time', '5', 'He permite Que OS candidatos a Emprego par&aacute;grafo postar Seu curr&iacute;culo, PROCURAR Emprego, ver anuncios de Emprego Pessoais. ELE IRA fornecer Varias Empresas par&aacute;grafo Colocar o Seu perfil de vaga no site de e TAMB&Eacute;M TEM Uma Op&ccedil;&atilde;o Par&aacute; Pesquisar Curr&iacute;culos candidatos. Para Al&eacute;m disto, haver&aacute; hum m&oacute;dulo de Administra&ccedil;&atilde;o para o Cliente uma Fazer altera&ccedil;&otilde;es no Conte&uacute;do do Banco de Dados. E Composto POR 4 M&oacute;dulos.', 'Marcos Santos', 'contato@marcos.santos', '81 9 9999-2438', '0', 'wm-informtica-jobs-in-tamandare-informtica-17', '186.194.119.121', null, null, 'indesign , informática', '0'), ('18', '19', 'Test', '19', '40', 'Trainee Stipend', '2016-03-29', 'pending', 'no', 'Australia', '2016-07-29', '', 'BS', 'Fresh', 'sidney', 'Full Time', '1', 'test', '', '', '', '0', 'asa-jobs-in-sidney-test-18', '95.13.227.85', null, null, 'php', '0'), ('19', '21', 'Balls', '21', '5', '5000-10000', '2016-03-29', 'pending', 'no', 'United States', '2016-08-15', '', 'BE', 'Fresh', 'columbus', 'Full Time', '2', '?Wi-Fi connection name and password is written on the router located behind the T.V. in living room.All clean linens are provided. You will be responsible for laundering your towels and other linens during your stay.Extra towels, wash clothes and hand towels are under vanities in bathrooms.<br />\n?Wi-Fi connection name and password is written on the router located behind the T.V. in living room.All clean linens are provided. You will be responsible for laundering your towels and other linens during your stay.Extra towels, wash clothes and hand towels are under vanities in bathrooms.<br />\n?Wi-Fi connection name and password is written on the router located behind the T.V. in living room.All clean linens are provided. You will be responsible for laundering your towels and other linens during your stay.Extra towels, wash clothes and hand towels are under vanities in bathrooms.<br />\n?Wi-Fi connection name and password is written on the router located behind the T.V. in living room.All clean linens are provided. You will be responsible for laundering your towels and other linens during your stay.Extra towels, wash clothes and hand towels are under vanities in bathrooms.<br />\n?Wi-Fi connection name and password is written on the router located behind the T.V. in living room.All clean linens are provided. You will be responsible for laundering your towels and other linens during your stay.Extra towels, wash clothes and hand towels are under vanities in bathrooms.<br />\n?Wi-Fi connection name and password is written on the router located behind the T.V. in living room.All clean linens are provided. You will be responsible for laundering your towels and other linens during your stay.Extra towels, wash clothes and hand towels are under vanities in bathrooms.<br />\n?Wi-Fi connection name and password is written on the router located behind the T.V. in living room.All clean linens are provided. You will be responsible for laundering your towels and other linens during your stay.Extra towels, wash clothes and hand towels are under vanities in bathrooms.<br />\n<br />\n&nbsp;', '', '', '', '0', 'dfgsdfg-jobs-in-columbus-balls-19', '173.18.248.203', null, null, 'web', '0'), ('20', '22', 'Fdgdfgdfgdfg', '22', '5', 'Trainee Stipend', '2016-03-30', 'pending', 'no', 'United Kingdom', '2016-07-30', '', 'MA', 'Fresh', 'London', 'Part Time', '1', 'gdfgdf gdfgdfgdfgd fgdf gdfgdfgdf gdfgdfgd fgdfg dfgdfgdfg dfg dfg dfgd fg dfgdf gdfg&nbsp;', '', '', '', '0', 'dsfsdf-jobs-in-london-fdgdfgdfgdfg-20', '78.162.229.207', null, null, 'php , dfgdfg, dffd', '0'), ('21', '23', 'Test123113', '23', '22', '81000-100000', '2016-03-31', 'pending', 'no', 'Pakistan', '2016-07-31', '', 'BA', '3', 'Austin', 'Full Time', '1', '3e3e', '', '', '', '0', 'softrait-technologies-jobs-in-austin-test123113-21', '180.215.122.100', null, null, 'java, php', '0'), ('22', '24', 'Dfdfdf', '24', '10', 'Trainee Stipend', '2016-04-01', 'pending', 'no', 'China', '2016-08-01', '', 'BS', 'Fresh', 'fdfdf', 'Full Time', '1', 'dfdfsdfsdfsdfsdfsdfds<br />\nsdfsd<br />\n&nbsp;', '', '', '', '0', 'fdfdf-jobs-in-fdfdf-dfdfdf-22', '171.18.2.109', null, null, 'fdf, defd', '0'), ('23', '25', 'Customer Service', '25', '10', '5000-10000', '2016-04-02', 'pending', 'no', 'Pakistan', '2016-08-02', '', 'Does not matter', 'Less than 1', 'Abu Dhabi', 'Full Time', '1', 'ddd', '', '', '', '0', 'master-tech-jobs-in-abu dhabi-customer-service-23', '103.230.62.226', null, null, 'web design er', '0'), ('24', '29', 'Sdfasdf', '29', '3', '5000-10000', '2016-04-03', 'pending', 'no', 'United Arab Emirates', '2016-08-10', '', 'BS', '4', 'sdfsdaf', 'Part Time', '1', '???????????? ?', '', '', '', '0', 'sdfsafd-jobs-in-sdfsdaf-sdfasdf-24', '82.166.140.125', null, null, 'indesign', '0'), ('25', '30', 'Designer', '30', '18', '240000-280000', '2016-04-04', 'pending', 'no', 'Canada', '2016-08-04', '', 'HSSC', '3', 'manitoba', 'Part Time', '1', 'f sdfsd fsdfsdfsdfsdf sd fsfsdf hjdzvbfjhbkxjfbnx,jfnkjbdz', '', '', '', '0', 'motto-jobs-in-manitoba-designer-25', '78.182.77.41', null, null, 'php, html', '0'), ('26', '32', '123', '32', '3', '41000-50000', '2016-04-06', 'pending', 'no', 'United Arab Emirates', '2016-08-31', '', 'HSSC', '4', 'Chicago', 'Part Time', '1', '312312312', '', '', '', '0', 'smartdev-jobs-in-chicago-123-26', '176.73.74.34', null, null, 'ae, resa', '0'), ('27', '35', 'Dsdfsf', '35', '10', '160000-200000', '2016-04-08', 'pending', 'no', 'Canada', '2016-08-08', '', 'BE', 'Fresh', 'america', 'Full Time', '1', '', '', '', '', '0', 'dsfsfds-jobs-in-america-dsdfsf-27', '123.231.120.61', null, null, 'informática', '0'), ('28', '36', 'Test Adverti', '36', '5', '5000-10000', '2016-04-10', 'pending', 'no', 'Australia', '2016-08-10', '', 'HSSC', '5', 'asdsdas', 'Part Time', '2', 'descrizione', '', '', '', '0', 'azienda-alpha-jobs-in-asdsdas-test-adverti-28', '213.55.184.198', null, null, 'php, mysql', '0'), ('29', '40', 'Php', '40', '22', '5000-10000', '2016-04-15', 'pending', 'no', 'United States', '2016-08-31', '', 'MCS', '2', 'ssss', 'Part Time', '5', 'cvxcccccccc<br />\nvcdf<br />\nfdfd<br />\ndfdf<br />\ndfdf', '56555566', 'ttyytyt', '577777', '0', 'xyz-jobs-in-ssss-php-29', '122.179.54.139', null, null, 'php, css, html', '0'), ('30', '41', 'It', '41', '40', 'Trainee Stipend', '2016-04-15', 'pending', 'no', 'United Arab Emirates', '2016-08-15', '', 'BA', 'Fresh', 'delhi', 'Full Time', '12', 'saf', '', '', '', '0', 'sparx-jobs-in-delhi-it-30', '180.151.15.82', null, null, 'html, java', '0'), ('31', '43', 'Sse', '43', '22', '21000-25000', '2016-04-18', 'pending', 'no', 'United Kingdom', '2016-08-18', '', 'BE', '4', 'London', 'Full Time', '1', 'test', '', '', '', '0', 'paxten-jobs-in-london-sse-31', '14.141.43.6', null, null, 'java, informática', '0'), ('32', '48', 'Deneme', '48', '3', '21000-25000', '2016-04-29', 'pending', 'no', 'United States', '2016-08-29', '', 'CA', '3', 'ALASKA', 'Full Time', '1', 'DEEN G D D AAA DF F', '', '', '', '0', 'avrupa-reklam-jobs-in-alaska-deneme-32', '78.191.135.211', null, null, 'deneme', '0'), ('33', '49', 'Hàng Lo?t Cán B? Ch? Ch?t ?à N?ng T?m Bi?n ?? Xóa Tan Tin ??n', '49', '5', '5000-10000', '2016-04-30', 'pending', 'no', 'United States', '2016-08-30', '', 'BA', 'Fresh', 'Kansas', 'Full Time', '3', 'S&aacute;ng 30/4, ng&agrave;y ??u ti&ecirc;n trong k? ngh? l? k&eacute;o d&agrave;i 4 ng&agrave;y, &ocirc;ng Nguy?n ?i?u (Gi&aacute;m ??c S? T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i tr??ng ?&agrave; N?ng) c&ugrave;ng &ocirc;ng Nguy?n V?n Anh (Gi&aacute;m ??c Trung t&acirc;m k? thu?t m&ocirc;i tr??ng), Nguy?n Tr?n Qu&acirc;n (Ph&oacute; gi&aacute;m ??c Trung t&acirc;m K? thu?t m&ocirc;i tr??ng), Ph?m Thanh Ph&uacute;c (Chi c?c ph&oacute; b?o v? m&ocirc;i tr??ng) c&ugrave;ng nhi?u c&aacute;n b?, c&ocirc;ng ch?c S? T&agrave;i nguy&ecirc;n v&agrave; m&ocirc;i tr??ng ?&atilde; ?i t?m bi?n t?i b&atilde;i Ph?m V?n ??ng (qu?n S?n Tr&agrave;).<br />\nTrao ??i v?i&nbsp;VnExpress, &ocirc;ng Nguy?n ?i?u n&oacute;i: &quot;K?t qu? ki?m ??nh m?u n??c ? ?&agrave; N?ng ??m b?o an to&agrave;n n&ecirc;n ch&uacute;ng t&ocirc;i c?ng nh? m?i ng??i y&ecirc;n t&acirc;m t?m bi?n&quot;.&nbsp;&quot;Ch&iacute;nh quy?n s? th??ng xuy&ecirc;n l?y m?u n??c ?i ki?m tra v&agrave; c&ocirc;ng khai k?t qu?&quot;, &ocirc;ng ?i?u cho hay.', '', '', '', '0', 'handhome-jobs-in-kansas-hng-lot-cn-b-ch-cht-nng-tm-bin-xa-tan-tin-n-33', '117.0.56.17', null, null, 'english, french', '0'), ('34', '54', 'Fgfg', '54', '7', '140000-160000', '2016-05-02', 'pending', 'no', 'Canada', '2016-09-16', '', 'BA', '6', 'name', 'Part Time', '1', 'xfbdghgfh &nbsp;hgf hfg hfd hgf hd fghtr hfg hfg h', '', '', '', '0', 'the-testing-company-jobs-in-name-fgfg-34', '105.93.45.53', null, null, 'cctv', '0'), ('35', '56', 'Seavvc', '56', '5', '5000-10000', '2016-05-06', 'pending', 'no', 'United Kingdom', '2016-09-08', '', 'BA', 'Less than 1', 'wirral', 'Part Time', '11', 'asasdasd', '', '', '', '0', 'whitehouse-dental-practice-jobs-in-wirral-seavvc-35', '81.142.74.238', null, null, 'asdasda', '0'), ('36', '57', 'Zzzzzzzzzzzzzzzzzzzzz', '57', '3', 'Trainee Stipend', '2016-05-06', 'pending', 'no', 'United States', '2016-09-06', '', 'CA', 'Fresh', 'shanghai', 'Full Time', '1', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', '', '', '', '0', 'bobbbbbbbbbb-jobs-in-shanghai-zzzzzzzzzzzzzzzzzzzzz-36', '114.111.167.226', null, null, 'zzzzzzzzzzzzzzzzzzzzz', '0'), ('37', '61', 'Urgent Require It Develeporees', '61', '40', 'Trainee Stipend', '2016-05-13', 'pending', 'no', 'Canada', '2016-09-13', '', 'BE', 'Fresh', 'Hyderabad', 'Full Time', '1', 'wefwjhdkhf8fyuh<br />\nfgfghfughfk<br />\ngfghfgjfnkf', '', '', '', '0', 'cinestation-jobs-in-hyderabad-urgent-require-it-develeporees-37', '49.205.81.161', null, null, 'java', '0'), ('38', '62', 'Python Developer', '62', '22', '11000-15000', '2016-05-13', 'pending', 'no', 'United Kingdom', '2016-09-29', '', 'PhD', '4', 'New Delhi', 'Full Time', '1', 'asdsdaadsdas', '', '', '', '0', 'softgators-tech-pvt-ltd-jobs-in-new delhi-python-developer-38', '43.247.41.97', null, null, 'python, php', '0'), ('39', '63', 'Engineer', '63', '5', '16000-20000', '2016-05-13', 'pending', 'no', 'China', '2016-09-13', '', 'HSSC', 'Fresh', 'DFDF', 'Part Time', '1', 'ASDAS FSDF SDF JHDSAF SDJ HFDJSF SDHF JSDHF SDHF JSDHA FJHDFJSAHF SDAF HSDJAFH JSDHF JSDAF JHASDFJ HSDJF HSDJFH JSDKFJSDH SDJ FSDHAJ FSDAF', '', '', '', '0', 'test-1463165183-jobs-in-dfdf-engineer-39', '105.94.206.109', null, null, 'testing, big data', '0'), ('40', '64', 'Manager', '64', '3', '5000-10000', '2016-05-16', 'pending', 'no', 'Canada', '2016-09-16', '', 'MBA', '2', 'canada', 'Full Time', '2', 'As Web designers plan, create and code web pages, using both non-technical and technical skills to produce websites that fit the customer&#39;s requirements.<br />\n<br />\nThey are involved in the technical and graphical aspects of pages, producing not just the look of the website, but determining how it works as well. Web designers might also be responsible for the maintenance of an existing site.<br />\nThe term web developer is sometimes used interchangeably with web designer, but this can be confusing. Web developing is a more specialist role, focusing on the back-end development of a website and will incorporate, among other things, the creation of highly complex search functions.<br />\nThe recent growth in touchscreen phones and tablet devices has dictated a new way of designing websites, with the web designer needing to ensure that web pages are responsive no matter what type of device a viewer is using. Therefore the need to test websites at different stages of design, on a variety of different devices, has become an important aspect of the job.<br />\n&nbsp;', '', '', '', '0', 'nib-technology-company-jobs-in-canada-manager-40', '197.156.67.126', null, null, 'accountant', '0'), ('41', '68', 'Sksjsjsj', '68', '16', '21000-25000', '2016-05-23', 'pending', 'no', 'United Arab Emirates', '2016-09-23', '', 'CA', '2', 'Sjshhsj', 'Part Time', '1', 'Sjsjsjnsnsn\nAkakksjs', '', '', '', '0', 'pakajs-jobs-in-sjshhsj-sksjsjsj-41', '218.153.153.50', null, null, 'skill, ace', '0'), ('42', '70', 'Vbnm,mn', '70', '3', '31000-35000', '2016-05-26', 'pending', 'no', 'Pakistan', '2016-09-26', '', 'ACMA', 'Fresh', 'Chicago', 'Full Time', '1', 'dfghjk', '', '', '', '0', 'ddddd-jobs-in-chicago-vbnmmn-42', '123.231.124.220', null, null, 'php', '0'), ('43', '72', 'Developer Delphi', '72', '22', '5000-10000', '2016-05-27', 'pending', 'no', 'Canada', '2016-09-27', '', 'BE', '1', 'dfasdfdsf', 'Full Time', '1', 'fqwfjdlaskdjflkasdfjlaskdjflasdjkflajsdf<br />\nasdf<br />\nas<br />\ndfasd', '', '', '', '0', 'ivaluelabs-jobs-in-dfasdfdsf-developer-delphi-43', '201.204.149.149', null, null, 'delphi, programming', '0'), ('44', '74', 'Java Developer', '74', '22', '81000-100000', '2016-05-28', 'pending', 'no', 'United States', '2016-09-28', '', 'PhD', '3', 'New York', 'Full Time', '1', 'Highly Trained', '', '', '', '0', 'onion-smart-solutions-jobs-in-new york-java-developer-44', '154.78.22.234', null, null, 'highly trained', '0'), ('45', '76', 'Jhgfjhgf', '76', '10', '5000-10000', '2016-06-01', 'pending', 'no', 'United Kingdom', '2016-05-31', '', 'BA', '3', 'lima', 'Full Time', '1', 'safsfsafasdfsda sdfdsfdsafdsfdsf', 'asdsdsad', 'enjey11@gmail.com', '3213213123', '0', 'rrrr-jobs-in-lima-jhgfjhgf-45', '190.236.166.115', null, null, 'web, indesing, developer', '0'), ('46', '77', 'Manager', '77', '3', 'Trainee Stipend', '2016-06-03', 'pending', 'no', 'Australia', '2016-10-03', '', 'BA', 'Fresh', 'sydney', 'Full Time', '1', 'Great Work', '', '', '', '0', 'patel-jobs-in-sydney-manager-46', '14.200.233.213', null, null, 'nice', '0'), ('47', '78', '05000', '78', '10', 'Trainee Stipend', '2016-06-08', 'pending', 'no', 'United Arab Emirates', '2016-10-08', '', 'SSC', '7', 'dubai', 'Full Time', '1', '05000', '', '', '', '0', 'aaj-mid-jobs-in-dubai-05000-47', '31.215.210.167', null, null, '05000', '0'), ('48', '79', 'Trainee Needed', '79', '5', 'Trainee Stipend', '2016-06-09', 'pending', 'no', 'United States', '2016-10-09', '', 'Does not matter', 'Fresh', 'las vegas', 'Full Time', '3', 'type office address here<br />\nCall =&gt;&gt; 08162529424<br />\n(Line opens from 9am - 5pm, Mondays to<br />\nFridays ONLY) And 10am to 3pm on Saturdays', '', '', '', '0', 'the-koko-jobs-in-las vegas-trainee-needed-48', '41.206.1.9', null, null, 'fluent in english, attentive to details, honest', '0'), ('49', '81', 'Sdss', '81', '40', 'Trainee Stipend', '2016-06-15', 'pending', 'no', 'Canada', '2016-10-15', '', 'Does not matter', 'Fresh', 'SDS', 'Full Time', '1', 'ede', '', '', '', '0', 'zs-jobs-in-sds-sdss-49', '41.228.12.180', null, null, 'xml', '0'), ('50', '81', 'Azerty', '81', '22', 'Trainee Stipend', '2016-06-15', 'pending', 'no', 'Canada', '2016-10-15', '', 'Does not matter', 'Fresh', 'SDS', 'Full Time', '1', 'qdggd', '', '', '', '0', 'zs-jobs-in-sds-azerty-50', '41.228.12.180', null, null, 'xml', '0'), ('51', '81', 'Accountant', '81', '3', '11000-15000', '2016-06-17', 'active', 'no', 'United Kingdom', '2016-10-17', '', 'MS', 'Fresh', 'London', 'Full Time', '1', 'hk kjh kjhk jkjh kjhk hkjfg hggfhj jhg j', '', '', '', '0', 'zs-jobs-in-london-accountant-51', '::1', null, null, 'account, math, finance', '0');
COMMIT;

-- ----------------------------
--  Table structure for `pp_prohibited_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `pp_prohibited_keywords`;
CREATE TABLE `pp_prohibited_keywords` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(150) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_prohibited_keywords`
-- ----------------------------
BEGIN;
INSERT INTO `pp_prohibited_keywords` VALUES ('8', 'idiot'), ('9', 'fuck'), ('10', 'bitch');
COMMIT;

-- ----------------------------
--  Table structure for `pp_qualifications`
-- ----------------------------
DROP TABLE IF EXISTS `pp_qualifications`;
CREATE TABLE `pp_qualifications` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `val` varchar(25) DEFAULT NULL,
  `text` varchar(25) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_qualifications`
-- ----------------------------
BEGIN;
INSERT INTO `pp_qualifications` VALUES ('1', 'BA', 'BA', null), ('2', 'BE', 'BE', null), ('3', 'BS', 'BS', null), ('4', 'CA', 'CA', null), ('5', 'Certification', 'Certification', null), ('6', 'Diploma', 'Diploma', null), ('7', 'HSSC', 'HSSC', null), ('8', 'MA', 'MA', null), ('9', 'MBA', 'MBA', null), ('10', 'MS', 'MS', null), ('11', 'PhD', 'PhD', null), ('12', 'SSC', 'SSC', null), ('13', 'ACMA', 'ACMA', null), ('14', 'MCS', 'MCS', null), ('15', 'Does not matter', 'Does not matter', null);
COMMIT;

-- ----------------------------
--  Table structure for `pp_salaries`
-- ----------------------------
DROP TABLE IF EXISTS `pp_salaries`;
CREATE TABLE `pp_salaries` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `val` varchar(25) DEFAULT NULL,
  `text` varchar(25) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_salaries`
-- ----------------------------
BEGIN;
INSERT INTO `pp_salaries` VALUES ('1', 'Trainee Stipend', 'Trainee Stipend', '0'), ('2', '5000-10000', '5-10', null), ('3', '11000-15000', '11-15', null), ('4', '16000-20000', '16-20', null), ('5', '21000-25000', '21-25', null), ('6', '26000-30000', '26-30', null), ('7', '31000-35000', '31-35', null), ('8', '36000-40000', '36-40', null), ('9', '41000-50000', '41-50', null), ('10', '51000-60000', '51-60', null), ('11', '61000-70000', '61-70', null), ('12', '71000-80000', '71-80', null), ('13', '81000-100000', '81-100', null), ('14', '100000-120000', '101-120', null), ('15', '120000-140000', '121-140', null), ('16', '140000-160000', '141-160', null), ('17', '160000-200000', '161-200', null), ('18', '200000-240000', '201-240', null), ('19', '240000-280000', '241-280', null), ('20', '281000-350000', '281-350', null), ('21', '350000-450000', '351-450', null), ('22', '450000 or above', '450 or above', null), ('23', 'Discuss', 'Discuss', null), ('24', 'Depends', 'Depends', null);
COMMIT;

-- ----------------------------
--  Table structure for `pp_scam`
-- ----------------------------
DROP TABLE IF EXISTS `pp_scam`;
CREATE TABLE `pp_scam` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_ID` int(11) DEFAULT NULL,
  `job_ID` int(11) DEFAULT NULL,
  `reason` text,
  `dated` datetime DEFAULT NULL,
  `ip_address` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `pp_seeker_academic`
-- ----------------------------
DROP TABLE IF EXISTS `pp_seeker_academic`;
CREATE TABLE `pp_seeker_academic` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) DEFAULT NULL,
  `degree_level` varchar(30) DEFAULT NULL,
  `degree_title` varchar(100) DEFAULT NULL,
  `major` varchar(155) DEFAULT NULL,
  `institude` varchar(155) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `completion_year` int(5) DEFAULT NULL,
  `dated` datetime DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_seeker_academic`
-- ----------------------------
BEGIN;
INSERT INTO `pp_seeker_academic` VALUES ('1', '10', null, 'BA', 'test', 'teste e ere', 'United States of America', 'New york', '2012', '2016-03-12 13:05:55', null, null), ('2', '18', null, 'BS', 'axaxsxsxsxsxs', 'xsxsxsxsxsxsxsxsx', 'Peru', 'Lima', '2015', '2016-03-28 20:03:39', null, null), ('3', '18', null, 'Certification', 'cscscdscdsdc', 'cdscdsdcscdsdcscsdcdcsd', 'Pakistan', 'sdcsdcsdcsd', '2020', '2016-03-28 20:05:34', null, null), ('4', '18', null, 'Diploma', 'csdcsdcsdcsdscsdcscdsdcsdc', 'cdscsdcsdcsdcsdcsdcsdcsdcsdc', 'Pakistan', 'csdcsdcscsdcsd', '2018', '2016-03-28 20:06:28', null, null), ('5', '15', null, 'Certification', '3º Ano Completo', 'EREM Tamandaré', 'Brazil', 'Tamandaré', '2014', '2016-03-28 22:24:18', null, null), ('6', '25', null, 'BS', 'ghj', 'fghjfgh', 'United States of America', 'fortson', '2007', '2016-03-29 13:43:47', null, null), ('7', '32', null, 'MBA', 'ded', 'eded', 'India', 'arabbia', '2020', '2016-03-31 23:38:10', null, null), ('8', '36', null, 'MBA', 'MKT', 'WUB', 'Bangladesh', 'dhaka', '2013', '2016-04-02 03:23:29', null, null), ('9', '59', null, 'MBA', 'computer application', 'add', 'India', 'mana', '2010', '2016-04-08 16:06:52', null, null), ('10', '74', null, 'BA', 'php', 'abc', 'India', 'mangalore', '2014', '2016-04-15 11:42:43', null, null), ('11', '75', null, 'BS', 'Computer', 'SV University', 'India', 'Bangalore', '2002', '2016-04-15 15:27:09', null, null), ('12', '95', null, 'PhD', 'test', 'test', 'Tahiti', 'test', '2021', '2016-05-04 18:51:07', null, null), ('13', '109', null, 'BA', '12', '21', 'Pakistan', '12', '2021', '2016-05-13 20:35:24', null, null), ('14', '132', null, 'Certification', 'sdas', 'asdsad', 'Peru', 'sadsad', '2000', '2016-06-01 03:45:47', null, null), ('15', '133', null, 'BS', 'ddd', 'sffs', 'Pakistan', 'Tgcvga', '2020', '2016-06-02 12:53:52', null, null), ('16', '137', null, 'BA', 'fdsa', 'fdas', 'Pakistan', 'fdsa', '2008', '2016-06-09 23:56:55', null, null), ('18', '139', null, 'CA', 'fdsa', 'fdsa', 'Norway', 'fdsa', '2006', '2016-06-11 22:02:33', null, null), ('19', '123', null, 'BA', 'Science', 'anc', 'Nigeria', 'adg', '2012', '2016-06-17 02:41:10', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `pp_seeker_additional_info`
-- ----------------------------
DROP TABLE IF EXISTS `pp_seeker_additional_info`;
CREATE TABLE `pp_seeker_additional_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) DEFAULT NULL,
  `languages` varchar(255) DEFAULT NULL COMMENT 'JSON data',
  `interest` varchar(155) DEFAULT NULL,
  `awards` varchar(100) DEFAULT NULL,
  `additional_qualities` varchar(155) DEFAULT NULL,
  `convicted_crime` enum('no','yes') DEFAULT 'no',
  `crime_details` text,
  `summary` text,
  `bad_habits` varchar(255) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `resume_search` (`summary`,`keywords`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_seeker_additional_info`
-- ----------------------------
BEGIN;
INSERT INTO `pp_seeker_additional_info` VALUES ('1', '8', null, null, null, null, 'no', null, null, null, null, null, null), ('2', '9', null, null, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur massa nisl, porttitor id urna sag', null, 'no', null, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur massa nisl, porttitor id urna sagittis, mollis tristique diam. Donec augue nulla, tempus id egestas finibus, sodales a ligula. Suspendisse lacinia malesuada sapien nec pretium. Curabitur sed augue sed neque vulputate congue at pellentesque ante. Aliquam facilisis cursus eros, in laoreet risus luctus non. Aliquam tincidunt purus in urna molestie, eget aliquet lectus sollicitudin. Proin pretium tellus maximus dolor dapibus aliquet. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam sed bibendum nulla. Nulla ac magna placerat, tristique nisl a, consectetur lectus. Pellentesque quis enim semper, placerat augue vel, faucibus urna. Nullam ut odio volutpat, scelerisque mi ac, ornare libero.', null, null, null, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur massa nisl, porttitor id urna sagittis, mollis tristique diam. Donec augue nulla, tempus id egestas finibus, sodales a ligula. Suspendisse lacinia malesuada sapien nec pretium. Curabitur sed augue sed neque vulputate congue at pellentesque ante. Aliquam facilisis cursus eros, in laoreet risus luctus non. Aliquam tincidunt purus in urna molestie, eget aliquet lectus sollicitudin. Proin pretium tellus maximus dolor dapibus aliquet. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam sed bibendum nulla. Nulla ac magna placerat, tristique nisl a, consectetur lectus. Pellentesque quis enim semper, placerat augue vel, faucibus urna. Nullam ut odio volutpat, scelerisque mi ac, ornare libero.'), ('3', '10', null, null, 'Quisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convall', null, 'no', null, 'Quisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', null, null, null, 'Quisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.'), ('4', '11', null, null, null, null, 'no', null, null, null, null, null, null), ('5', '12', null, null, null, null, 'no', null, null, null, null, null, null), ('6', '13', null, null, null, null, 'no', null, null, null, null, null, null), ('7', '14', null, null, null, null, 'no', null, null, null, null, null, null), ('8', '15', null, null, 'Qualquer coisa que vim que seja bem vindo.', null, 'no', null, 'Eu geralmente trabalhei com computação e fotografias. O meu objetivo é dar o meu melhor a empresa, pois quando eu tento dar o meu melhor eu consigo, e pra conquistar as pessoas eu sou de mais.', null, null, null, 'Serviços Gerais'), ('9', '16', null, null, null, null, 'no', null, null, null, null, null, null), ('10', '17', null, null, null, null, 'no', null, null, null, null, null, null), ('11', '18', null, null, 'demo demo demo demo demo demo demo demode mdo', null, 'no', null, 'dededededed edededededededed dede', null, null, null, 'de demo demo demo demo demo demo dem'), ('12', '19', null, null, null, null, 'no', null, null, null, null, null, null), ('13', '20', null, null, null, null, 'no', null, null, null, null, null, null), ('14', '21', null, null, null, null, 'no', null, null, null, null, null, null), ('15', '22', null, null, null, null, 'no', null, null, null, null, null, null), ('16', '23', null, null, null, null, 'no', null, null, null, null, null, null), ('17', '24', null, null, null, null, 'no', null, null, null, null, null, null), ('18', '25', null, null, 'rthrthrt', null, 'no', null, 'df df df gd fg dfgdfgsdfrg', null, null, null, 'sfrtghdr'), ('19', '26', null, null, null, null, 'no', null, null, null, null, null, null), ('20', '27', null, null, null, null, 'no', null, null, null, null, null, null), ('21', '28', null, null, null, null, 'no', null, null, null, null, null, null), ('22', '29', null, null, null, null, 'no', null, null, null, null, null, null), ('23', '30', null, null, null, null, 'no', null, null, null, null, null, null), ('24', '32', null, null, null, null, 'no', null, 'adfsdfsdfsdfsdf', null, null, null, null), ('25', '33', null, null, null, null, 'no', null, null, null, null, null, null), ('26', '35', null, null, null, null, 'no', null, null, null, null, null, null), ('27', '36', null, null, null, null, 'no', null, 'My Name is Saiful', null, null, null, null), ('28', '37', null, null, null, null, 'no', null, null, null, null, null, null), ('29', '38', null, null, null, null, 'no', null, null, null, null, null, null), ('30', '41', null, null, null, null, 'no', null, 'kdkdkd kdkdkd ksksks zkzkzkz sksksksksks kdkdkd kdkdkd ksksks zkzkzkz sksksksksks kdkdkd kdkdkd ksksks zkzkzkz sksksksksks kdkdkd kdkdkd ksksks zkzkzkz sksksksksks vkdkdkd kdkdkd ksksks zkzkzkz sksksksksks kdkdkd kdkdkd ksksks zkzkzkz sksksksksks kdkdkd kdkdkd ksksks zkzkzkz sksksksksks kdkdkd kdkdkd ksksks zkzkzkz sksksksksks kdkdkd kdkdkd ksksks zkzkzkz sksksksksks vkdkdkd kdkdkd ksksks zkzkzkz sksksksksks kdkdkd kdkdkd ksksks zkzkzkz sksksksksks kdkdkd kdkdkd ksksks zkzkzkz sksksksksks kdkdkd kdkdkd ksksks zkzkzkz sksksksksks kdkdkd kdkdkd ksksks zkzkzkz sksksksksks vkdkdkd kdkdkd ksksks zkzkzkz sksksksksks', null, null, null, null), ('31', '42', null, null, null, null, 'no', null, null, null, null, null, null), ('32', '47', null, null, null, null, 'no', null, null, null, null, null, null), ('33', '48', null, null, null, null, 'no', null, null, null, null, null, null), ('34', '49', null, null, null, null, 'no', null, null, null, null, null, null), ('35', '50', null, null, null, null, 'no', null, null, null, null, null, null), ('36', '51', null, null, null, null, 'no', null, null, null, null, null, null), ('37', '52', null, null, null, null, 'no', null, null, null, null, null, null), ('38', '53', null, null, null, null, 'no', null, null, null, null, null, null), ('39', '54', null, null, null, null, 'no', null, null, null, null, null, null), ('40', '55', null, null, null, null, 'no', null, null, null, null, null, null), ('41', '56', null, null, null, null, 'no', null, null, null, null, null, null), ('42', '57', null, null, null, null, 'no', null, null, null, null, null, null), ('43', '58', null, null, null, null, 'no', null, null, null, null, null, null), ('44', '59', null, null, null, null, 'no', null, null, null, null, null, null), ('45', '60', null, null, null, null, 'no', null, null, null, null, null, null), ('46', '61', null, null, null, null, 'no', null, null, null, null, null, null), ('47', '65', null, null, null, null, 'no', null, null, null, null, null, null), ('48', '66', null, null, null, null, 'no', null, null, null, null, null, null), ('49', '67', null, null, null, null, 'no', null, null, null, null, null, null), ('50', '68', null, null, null, null, 'no', null, null, null, null, null, null), ('51', '69', null, null, null, null, 'no', null, null, null, null, null, null), ('52', '70', null, null, null, null, 'no', null, null, null, null, null, null), ('53', '71', null, null, null, null, 'no', null, null, null, null, null, null), ('54', '74', null, null, 'ghgfhg', null, 'no', null, 'fgfdfd', null, null, null, 'hghg'), ('55', '75', null, null, 'Best Employee of the Year', null, 'no', null, '1	Around 6+ Years of Experience in Manual testing (Printer Domain).\n2	Expertise in Software testing process.\n3	Proficient with Software Development Life cycle.\n4	Black Box testing, Integration Testing, System testing, Boundary testing and Regression testing process of a given software application for different software releases and builds.\n5	Development of test procedure, test cases and test reporting documents.\n6	Review Test Cases on Fixed Defects by Onsite Team on different freezes and different Products.', null, null, null, 'To be a part of an Organization which provides a high quality of work life through challenging opportunities, a meaningful career growth and professional development'), ('56', '76', null, null, null, null, 'no', null, null, null, null, null, null), ('57', '78', null, null, null, null, 'no', null, null, null, null, null, null), ('58', '79', null, null, null, null, 'no', null, null, null, null, null, null), ('59', '80', null, null, null, null, 'no', null, null, null, null, null, null), ('60', '81', null, null, null, null, 'no', null, null, null, null, null, null), ('61', '82', null, null, null, null, 'no', null, null, null, null, null, null), ('62', '83', null, null, null, null, 'no', null, null, null, null, null, null), ('63', '84', null, null, null, null, 'no', null, null, null, null, null, null), ('64', '85', null, null, null, null, 'no', null, null, null, null, null, null), ('65', '86', null, null, null, null, 'no', null, null, null, null, null, null), ('66', '87', null, null, null, null, 'no', null, null, null, null, null, null), ('67', '88', null, null, null, null, 'no', null, null, null, null, null, null), ('68', '89', null, null, null, null, 'no', null, null, null, null, null, null), ('69', '90', null, null, null, null, 'no', null, null, null, null, null, null), ('70', '91', null, null, null, null, 'no', null, null, null, null, null, null), ('71', '92', null, null, null, null, 'no', null, null, null, null, null, null), ('72', '93', null, null, null, null, 'no', null, null, null, null, null, null), ('73', '94', null, null, null, null, 'no', null, null, null, null, null, null), ('74', '95', null, null, null, null, 'no', null, 'test at test.com and testing test from test date to test updat and original test update.', null, null, null, null), ('75', '97', null, null, null, null, 'no', null, null, null, null, null, null), ('76', '98', null, null, null, null, 'no', null, null, null, null, null, null), ('77', '99', null, null, null, null, 'no', null, null, null, null, null, null), ('78', '100', null, null, null, null, 'no', null, null, null, null, null, null), ('79', '102', null, null, null, null, 'no', null, null, null, null, null, null), ('80', '103', null, null, null, null, 'no', null, null, null, null, null, null), ('81', '105', null, null, null, null, 'no', null, null, null, null, null, null), ('82', '106', null, null, null, null, 'no', null, null, null, null, null, null), ('83', '107', null, null, null, null, 'no', null, null, null, null, null, null), ('84', '108', null, null, null, null, 'no', null, null, null, null, null, null), ('85', '109', null, null, null, null, 'no', null, 'hello pro', null, null, null, null), ('86', '110', null, null, null, null, 'no', null, null, null, null, null, null), ('87', '111', null, null, null, null, 'no', null, 'You\'ve ventured too far out into the desert! Time to head back.\n\nWe couldn\'t find any results for your search. Use more generic words or double check your spelling.You\'ve ventured too far out into the desert! Time to head back.\n\nWe couldn\'t find any results for your search. Use more generic words or double check your spelling.You\'ve ventured too far out into the desert! Time to head back.\n\nWe couldn\'t find any results for your search. Use more generic words or double check your spelling.', null, null, null, null), ('88', '113', null, null, null, null, 'no', null, null, null, null, null, null), ('89', '114', null, null, null, null, 'no', null, null, null, null, null, null), ('90', '115', null, null, null, null, 'no', null, null, null, null, null, null), ('91', '116', null, null, null, null, 'no', null, null, null, null, null, null), ('92', '117', null, null, null, null, 'no', null, null, null, null, null, null), ('93', '118', null, null, null, null, 'no', null, null, null, null, null, null), ('94', '119', null, null, null, null, 'no', null, null, null, null, null, null), ('95', '121', null, null, null, null, 'no', null, null, null, null, null, null), ('96', '122', null, null, null, null, 'no', null, null, null, null, null, null), ('97', '123', null, null, null, null, 'no', null, 'sfsdfds fsd fsdf sdfsdfsdfsdfsdf', null, null, null, null), ('98', '124', null, null, null, null, 'no', null, null, null, null, null, null), ('99', '125', null, null, null, null, 'no', null, null, null, null, null, null), ('100', '126', null, null, null, null, 'no', null, null, null, null, null, null), ('101', '127', null, null, null, null, 'no', null, null, null, null, null, null), ('102', '128', null, null, 'vcvc', null, 'no', null, 'vbvbvbv', null, null, null, 'vcvc'), ('103', '129', null, null, null, null, 'no', null, null, null, null, null, null), ('104', '130', null, null, null, null, 'no', null, null, null, null, null, null), ('105', '132', null, null, 'dadasdas', null, 'no', null, 'sdasdsad', null, null, null, 'sdsadsadad'), ('106', '133', null, null, null, null, 'no', null, null, null, null, null, null), ('107', '134', null, null, null, null, 'no', null, null, null, null, null, null), ('108', '135', null, null, null, null, 'no', null, null, null, null, null, null), ('109', '136', null, null, 'was class prefect', null, 'no', null, 'advance welding and inspection pro', null, null, null, 'to help employers succeed'), ('110', '137', null, null, null, null, 'no', null, null, null, null, null, null), ('111', '138', null, null, null, null, 'no', null, null, null, null, null, null), ('112', '139', null, null, null, null, 'no', null, null, null, null, null, null), ('113', '142', null, null, null, null, 'no', null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `pp_seeker_applied_for_job`
-- ----------------------------
DROP TABLE IF EXISTS `pp_seeker_applied_for_job`;
CREATE TABLE `pp_seeker_applied_for_job` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) NOT NULL,
  `job_ID` int(11) NOT NULL,
  `cover_letter` text,
  `expected_salary` varchar(20) DEFAULT NULL,
  `dated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(40) DEFAULT NULL,
  `employer_ID` int(11) DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_seeker_applied_for_job`
-- ----------------------------
BEGIN;
INSERT INTO `pp_seeker_applied_for_job` VALUES ('1', '9', '8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur massa nisl, porttitor id urna sagittis, mollis tristique diam. Donec augue nulla, tempus id egestas finibus, sodales a ligula. Suspendisse lacinia malesuada sapien nec pretium. Curabitur sed augue sed neque vulputate congue at pellentesque ante. Aliquam facilisis cursus eros, in laoreet risus luctus non. Aliquam tincidunt purus in urna molestie, eget aliquet lectus sollicitudin. Proin pretium tellus maximus dolor dapibus aliquet. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam sed bibendum nulla. Nulla ac magna placerat, tristique nisl a, consectetur lectus. Pellentesque quis enim semper, placerat augue vel, faucibus urna. Nullam ut odio volutpat, scelerisque mi ac, ornare libero.', 'Trainee Stipend', '2016-03-12 01:53:57', null, '7', null, null), ('2', '10', '12', 'Quisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', '21000-25000', '2016-03-12 13:06:43', null, '11', null, null), ('3', '10', '9', 'Quisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', 'Trainee Stipend', '2016-03-12 13:07:08', null, '8', null, null), ('4', '11', '9', 'Test', '5000-10000', '2016-03-28 14:14:16', null, '8', null, null), ('5', '11', '15', 'Account Officer', 'Trainee Stipend', '2016-03-28 14:14:39', null, '14', null, null), ('6', '11', '7', 'Account Officer', 'Trainee Stipend', '2016-03-28 14:15:03', null, '6', null, null), ('7', '12', '15', 'bcchchv', '5000-10000', '2016-03-28 14:47:58', null, '14', null, null), ('8', '15', '12', '1.500', 'Depends', '2016-03-28 18:51:23', null, '11', null, null), ('9', '17', '15', 'uuuuu', 'Trainee Stipend', '2016-03-28 19:37:26', null, '14', null, null), ('10', '18', '14', 'deed  deededxeddxedde', '16000-20000', '2016-03-28 20:07:46', null, '13', null, null), ('11', '15', '7', 'Designer', '5000-10000', '2016-03-28 23:51:55', null, '6', null, null), ('12', '19', '2', 'hjjhklklfgh', '11000-15000', '2016-03-29 00:10:22', null, '1', null, null), ('13', '21', '14', 'aaaaaaaaaaaa', '31000-35000', '2016-03-29 02:58:06', null, '13', null, null), ('14', '23', '10', 'Hello, this is my cover letter.', '5000-10000', '2016-03-29 05:54:46', null, '9', null, null), ('15', '25', '15', 'fgmfhjm', '11000-15000', '2016-03-29 13:44:49', null, '14', null, null), ('16', '26', '15', 'sadfsdfsdfffffffffffffffffffffffs', '5000-10000', '2016-03-29 22:41:52', null, '14', null, null), ('17', '30', '12', '234234234', '5000-10000', '2016-03-31 20:01:56', null, '11', null, null), ('18', '30', '15', '45345345', '281000-350000', '2016-03-31 20:16:28', null, '14', null, null), ('19', '32', '3', 'fsdfsdf', '5000-10000', '2016-03-31 23:39:09', null, '2', null, null), ('20', '36', '12', 'Hello', '5000-10000', '2016-04-02 03:25:01', null, '11', null, null), ('21', '38', '14', 'test', '11000-15000', '2016-04-02 12:12:38', null, '13', null, null), ('22', '41', '13', 'ksksks ksksksks skskks ksksks ksksksks skskks ksksks ksksksks skskks ksksks ksksksks skskks ksksks ksksksks skskks ksksks ksksksks skskksksksks ksksksks skskks ksksks ksksksks skskks ksksks ksksksks skskksksksks ksksksks skskks ksksks ksksksks skskks ksksks ksksksks skskksksksks ksksksks skskks ksksks ksksksks skskks ksksks ksksksks skskksksksks ksksksks skskks ksksks ksksksks skskks ksksks ksksksks skskksksksks ksksksks skskks ksksks ksksksks skskks ksksks ksksksks skskksksksks ksksksks skskks ksksks ksksksks skskks ksksks ksksksks skskks', '11000-15000', '2016-04-03 02:58:44', null, '12', null, null), ('23', '42', '15', 'aaaaa', '21000-25000', '2016-04-03 03:32:39', null, '14', null, null), ('24', '42', '6', 'a', 'Trainee Stipend', '2016-04-03 03:33:06', null, '5', null, null), ('25', '47', '14', 'rrrr', 'Trainee Stipend', '2016-04-03 03:45:58', null, '13', null, null), ('26', '48', '3', 'fsdfsdf', '26000-30000', '2016-04-03 15:33:36', null, '2', null, null), ('27', '36', '15', 'Thanks', '16000-20000', '2016-04-03 17:39:50', null, '14', null, null), ('28', '49', '15', 'benimben44627', '16000-20000', '2016-04-03 20:17:39', null, '14', null, null), ('29', '51', '15', 'Test Letter', '5000-10000', '2016-04-04 21:08:49', null, '14', null, null), ('30', '52', '15', 'fd', '5000-10000', '2016-04-05 13:58:50', null, '14', null, null), ('31', '55', '15', '3123', '11000-15000', '2016-04-06 18:23:31', null, '14', null, null), ('32', '59', '12', 'dhggggggggg', '26000-30000', '2016-04-08 16:07:49', null, '11', null, null), ('33', '58', '15', 'dfghdg', 'Trainee Stipend', '2016-04-08 16:23:41', null, '14', null, null), ('34', '61', '2', 'oooo', '5000-10000', '2016-04-10 00:23:33', null, '1', null, null), ('35', '65', '7', 'sfdadsa', '16000-20000', '2016-04-11 17:21:27', null, '6', null, null), ('36', '66', '15', 'SDS', '5000-10000', '2016-04-12 01:34:51', null, '14', null, null), ('37', '67', '12', 'hola', '11000-15000', '2016-04-12 10:35:49', null, '11', null, null), ('38', '69', '12', 'orem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis au', '281000-350000', '2016-04-13 18:36:52', null, '11', null, null), ('39', '70', '3', 'Just testing', '71000-80000', '2016-04-13 21:43:07', null, '2', null, null), ('40', '70', '12', 'lol', '5000-10000', '2016-04-13 22:25:07', null, '11', null, null), ('41', '74', '2', 'fhgh', '16000-20000', '2016-04-15 11:44:15', null, '1', null, null), ('42', '75', '3', 'test', '36000-40000', '2016-04-15 15:29:26', null, '2', null, null), ('43', '76', '12', 'fghfghfghgfh', '5000-10000', '2016-04-15 17:37:18', null, '11', null, null), ('44', '78', '15', 'denemeee', '11000-15000', '2016-04-16 12:06:39', null, '14', null, null), ('45', '80', '4', 'test', '41000-50000', '2016-04-17 23:23:48', null, '3', null, null), ('46', '81', '3', 'ok', 'Trainee Stipend', '2016-04-18 15:36:42', null, '2', null, null), ('47', '81', '13', 'Test', '11000-15000', '2016-04-19 18:55:11', null, '12', null, null), ('48', '83', '13', 'rtytrryty', '31000-35000', '2016-04-20 08:56:47', null, '12', null, null), ('49', '84', '12', 'dfgdfgdfgd', '5000-10000', '2016-04-22 03:43:30', null, '11', null, null), ('51', '95', '14', 'test', '450000 or above', '2016-05-04 18:51:57', null, '13', null, null), ('52', '97', '15', 'as', '26000-30000', '2016-05-05 15:55:09', null, '14', null, null), ('53', '99', '15', 'wdeasdasd', '450000 or above', '2016-05-06 01:03:12', null, '14', null, null), ('54', '92', '12', 'hello', '5000-10000', '2016-05-07 17:30:16', null, '11', null, null), ('55', '102', '2', 'test', '350000-450000', '2016-05-07 22:41:28', null, '1', null, null), ('56', '105', '7', 'Test cover letter', '5000-10000', '2016-05-10 03:11:06', null, '6', null, null), ('57', '107', '14', 'nada', '11000-15000', '2016-05-12 07:35:53', null, '13', null, null), ('58', '108', '13', 'jhgbhbhj', '51000-60000', '2016-05-12 23:32:26', null, '12', null, null), ('59', '92', '15', 'hhh', '21000-25000', '2016-05-13 13:18:09', null, '14', null, null), ('60', '111', '2', 'this is testing....', 'Discuss', '2016-05-15 01:23:49', null, '1', null, null), ('61', '115', '15', 'testset', '11000-15000', '2016-05-16 17:18:04', null, '14', null, null), ('62', '116', '12', 'As Web designers plan, create and code web pages, using both non-technical and technical skills to produce websites that fit the customer\'s requirements.\nThey are involved in the technical and graphical aspects of pages, producing not just the look of the website, but determining how it works as well. Web designers might also be responsible for the maintenance of an existing site.\nThe term web developer is sometimes used interchangeably with web designer, but this can be confusing. Web developing is a more specialist role, focusing on the back-end development of a website and will incorporate, among other things, the creation of highly complex search functions.\nThe recent growth in touchscreen phones and tablet devices has dictated a new way of designing websites, with the web designer needing to ensure that web pages are responsive no matter what type of device a viewer is using. Therefore the need to test websites at different stages of design, on a variety of different devices, has become an important aspect of the job.', 'Trainee Stipend', '2016-05-16 17:25:54', null, '11', null, null), ('63', '117', '15', 'cascsacs', '5000-10000', '2016-05-16 22:52:56', null, '14', null, null), ('64', '41', '15', 'tes cover letter', 'Trainee Stipend', '2016-05-21 19:30:17', null, '14', null, null), ('65', '123', '14', '\'t\'g(', '5000-10000', '2016-05-22 12:41:41', null, '13', null, null), ('66', '123', '15', '(--g-g', '5000-10000', '2016-05-22 12:42:01', null, '14', null, null), ('68', '125', '15', 'sfsqafa', '5000-10000', '2016-05-24 17:36:38', null, '14', null, null), ('69', '126', '10', 'fff', '61000-70000', '2016-05-25 00:34:56', null, '9', null, null), ('70', '126', '4', 'rwy3', '16000-20000', '2016-05-25 00:37:00', null, '3', null, null), ('71', '41', '14', 'test', '5000-10000', '2016-05-25 15:18:35', null, '13', null, null), ('72', '128', '7', 'gfgfg', '11000-15000', '2016-05-26 00:23:22', null, '6', null, null), ('73', '129', '2', 'asd', '5000-10000', '2016-05-27 19:06:06', null, '1', null, null), ('74', '129', '1', 'php mysql c# flash', '11000-15000', '2016-05-27 19:06:59', null, '1', null, null), ('75', '130', '10', 'Hello', '16000-20000', '2016-05-28 23:03:02', null, '9', null, null), ('76', '132', '7', 'ssss', 'Trainee Stipend', '2016-06-01 03:42:04', null, '6', null, null), ('77', '132', '10', 'sadsadasd', '5000-10000', '2016-06-01 03:46:57', null, '9', null, null), ('78', '133', '14', 'gg', '36000-40000', '2016-06-02 13:03:45', null, '13', null, null), ('79', '133', '13', 'ggggggggg', 'Trainee Stipend', '2016-06-02 13:09:53', null, '12', null, null), ('80', '117', '7', 'qdwdwd', 'Trainee Stipend', '2016-06-02 16:07:45', null, '6', null, null), ('81', '92', '7', 'ggg', '11000-15000', '2016-06-03 12:43:32', null, '6', null, null), ('82', '142', '3', 'ufd', 'Trainee Stipend', '2016-06-15 14:13:27', null, '2', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `pp_seeker_experience`
-- ----------------------------
DROP TABLE IF EXISTS `pp_seeker_experience`;
CREATE TABLE `pp_seeker_experience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) DEFAULT NULL,
  `job_title` varchar(155) DEFAULT NULL,
  `company_name` varchar(155) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `responsibilities` text,
  `dated` datetime DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_seeker_experience`
-- ----------------------------
BEGIN;
INSERT INTO `pp_seeker_experience` VALUES ('1', '9', 'test', 'testete', '2012-02-16', null, 'New york', 'United States of America', null, '2016-03-12 02:10:41', null, null), ('2', '15', 'Edmar Paz Fotográfias', 'Fotos & Vídeos', '1970-01-01', null, 'Tamandaré', 'Brazil', null, '2016-03-28 18:44:09', null, null), ('3', '18', 'dedededededde', 'deddededededdeded', '2016-03-28', '2016-03-31', 'lima', 'Bahamas', null, '2016-03-28 20:02:38', null, null), ('4', '15', 'Informática', 'Provedor Web', '2011-05-11', null, 'Tamandaré', 'Brazil', null, '2016-03-28 23:48:52', null, null), ('5', '15', 'Locutor', 'Rádio Estrela do Mar FM', '2013-06-05', null, 'Tamandaré', 'Brazil', null, '2016-03-28 23:49:34', null, null), ('6', '25', 'dfdf', 'fdfvd', '2016-03-09', null, 'columbus', 'United States of America', null, '2016-03-29 13:42:28', null, null), ('7', '25', 'zxcvzs', 'asfasdf', '2016-03-23', null, 'yfutu', 'United States of America', null, '2016-03-29 13:44:11', null, null), ('8', '32', 'Test123113', 'Softrait Technologies', '2016-04-01', '2016-04-01', 'palakkad', 'India', null, '2016-03-31 23:37:21', null, null), ('9', '36', 'Web Designer', 'Master Tech', '2016-04-11', null, 'Dhaka', 'Bangladesh', null, '2016-04-02 03:21:27', null, null), ('10', '36', 'Web Designer Sr', 'Master Tech Ltd', '2016-04-11', '2016-04-04', 'Dhaka', 'Bangladesh', null, '2016-04-02 03:22:09', null, null), ('11', '41', 'job 11', 'company  job', '2016-04-13', '2016-04-20', 'sksksks', 'Angola', null, '2016-04-03 02:55:23', null, null), ('12', '41', 'test', 's2m', '2016-02-02', '2016-04-13', 'casa', 'Antigua & Barbuda', null, '2016-04-03 02:55:50', null, null), ('13', '59', 'PHP developer', 'abc', '2015-06-02', null, 'mangalore', 'Afganistan', null, '2016-04-08 16:05:27', null, null), ('14', '74', 'gfdfg', 'fdtyytr', '2016-03-10', null, 'fdf', 'Croatia', null, '2016-04-15 11:41:43', null, null), ('15', '75', 'Sr Test Engineer', 'Aadithya Visuals Pvt Ltd', '2011-11-01', '2015-12-16', 'Bangalore', 'India', null, '2016-04-15 15:25:12', null, null), ('16', '75', 'Sr Test Engineer', 'Samsung India Software Operations', '2006-07-07', '2011-10-05', 'Bangalore', 'India', null, '2016-04-15 15:26:04', null, null), ('17', '92', 'test', 'the testing company', '2016-05-03', null, 'cairo', 'Egypt', null, '2016-05-02 11:56:32', null, null), ('18', '95', 'anything else', 'home', '2016-05-10', null, 'karachi', 'Afganistan', null, '2016-05-04 18:50:51', null, null), ('19', '109', 'dsfsd', 'dsfds', '2016-05-05', null, 'paris', 'Afganistan', null, '2016-05-13 20:28:58', null, null), ('20', '128', 'vbbvb', 'bvbvbv', '2016-05-03', '2016-05-01', 'bbb', 'Afganistan', null, '2016-05-26 00:22:05', null, null), ('21', '128', 'bvbvb', 'bbvbv', '2016-05-04', null, 'bvbvb', 'Afganistan', null, '2016-05-26 00:22:26', null, null), ('22', '132', 'dsadasd', 'sadsads', '2016-05-10', '2016-05-11', 'lima', 'Peru', null, '2016-06-01 03:45:22', null, null), ('23', '136', 'IT specialist', 'koko', '2016-06-01', '2016-07-25', 'wari', 'American Samoa', null, '2016-06-09 19:19:49', null, null), ('24', '142', 'dgh', 'dgh', '2016-06-15', null, 'dgh', 'Afganistan', null, '2016-06-15 14:09:28', null, null), ('25', '123', 'designer', 'avb', '2016-06-01', '2016-06-07', 'bairoot', 'Algeria', null, '2016-06-17 02:40:41', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `pp_seeker_resumes`
-- ----------------------------
DROP TABLE IF EXISTS `pp_seeker_resumes`;
CREATE TABLE `pp_seeker_resumes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) DEFAULT NULL,
  `is_uploaded_resume` enum('no','yes') DEFAULT 'no',
  `file_name` varchar(155) DEFAULT NULL,
  `resume_name` varchar(40) DEFAULT NULL,
  `dated` datetime DEFAULT NULL,
  `is_default_resume` enum('no','yes') DEFAULT 'no',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_seeker_resumes`
-- ----------------------------
BEGIN;
INSERT INTO `pp_seeker_resumes` VALUES ('1', '8', 'yes', 'test-test-8.docx', null, '2016-03-12 01:44:43', 'no'), ('2', '9', 'yes', 'michel-jen-9.docx', null, '2016-03-12 01:51:56', 'no'), ('4', '10', 'yes', 'jhony-man-JOBPORTAL-101457770070.docx', null, '2016-03-12 13:07:50', 'no'), ('5', '11', 'yes', 'kganxx-11.docx', null, '2016-03-28 14:11:09', 'no'), ('6', '12', 'yes', 'kacykos-12.jpg', null, '2016-03-28 14:46:29', 'no'), ('7', '13', 'yes', 'ajay-13.txt', null, '2016-03-28 17:40:38', 'no'), ('8', '14', 'yes', 'peter-sturm-14.pdf', null, '2016-03-28 18:18:22', 'no'), ('9', '15', 'yes', 'marcos-15.docx', null, '2016-03-28 18:33:36', 'no'), ('10', '16', 'yes', 'brunaoxp-16.jpg', null, '2016-03-28 19:11:36', 'no'), ('11', '17', 'yes', 'hotel-mira-serra-17.pdf', null, '2016-03-28 19:36:29', 'no'), ('12', '18', 'yes', 'pedro-lianzres-18.pdf', null, '2016-03-28 20:00:45', 'no'), ('13', '19', 'yes', 'shamim-19.docx', null, '2016-03-29 00:05:47', 'no'), ('14', '20', 'yes', 'laakz-laakz-20.jpg', null, '2016-03-29 00:59:45', 'no'), ('15', '21', 'yes', 'haris-21.jpg', null, '2016-03-29 02:56:12', 'no'), ('16', '22', 'yes', 'asasas-22.doc', null, '2016-03-29 03:13:18', 'no'), ('17', '23', 'yes', 'joe-employee-23.docx', null, '2016-03-29 05:51:44', 'no'), ('18', '24', 'yes', 'deneme-24.jpg', null, '2016-03-29 09:51:00', 'no'), ('19', '25', 'yes', 'asd-asd-a-25.pdf', null, '2016-03-29 13:41:11', 'no'), ('20', '26', 'yes', 'leandro-26.pdf', null, '2016-03-29 22:40:47', 'no'), ('21', '27', 'yes', 'gianfranco-devico-27.txt', null, '2016-03-31 06:04:32', 'no'), ('22', '28', 'yes', 'Özcan-odaba?o?lu-28.jpg', null, '2016-03-31 11:22:24', 'no'), ('23', '29', 'yes', 'anshu-29.pdf', null, '2016-03-31 11:39:58', 'no'), ('24', '30', 'yes', 'nong-tien-thanh-30.jpg', null, '2016-03-31 19:56:04', 'no'), ('25', '32', 'yes', 'abdu-ravoof-k-32.pdf', null, '2016-03-31 23:35:26', 'no'), ('26', '33', 'yes', 'web-creative-33.doc', null, '2016-04-01 01:25:56', 'no'), ('27', '35', 'yes', 'v-babu-babu-35.doc', null, '2016-04-01 17:55:19', 'no'), ('28', '36', 'yes', 'saiful-36.docx', null, '2016-04-02 03:18:45', 'no'), ('29', '37', 'yes', 'oswaldo-cabrera-37.jpg', null, '2016-04-02 05:49:14', 'no'), ('30', '38', 'yes', 'mark-38.jpg', null, '2016-04-02 12:11:59', 'no'), ('31', '41', 'yes', 'hicham-rassif-41.txt', null, '2016-04-03 02:52:58', 'no'), ('32', '42', 'yes', 'sebastian-42.pdf', null, '2016-04-03 03:31:29', 'no'), ('33', '47', 'yes', 'test-user-47.doc', null, '2016-04-03 03:44:55', 'no'), ('34', '48', 'yes', 'dfasdfas-48.docx', null, '2016-04-03 15:31:36', 'no'), ('35', '49', 'yes', 'paderborn-49.jpg', null, '2016-04-03 20:11:00', 'no'), ('36', '50', 'yes', 'rabson-takavarasha-50.PDF', null, '2016-04-04 13:55:06', 'no'), ('37', '51', 'yes', 'shrikant-51.docx', null, '2016-04-04 21:08:00', 'no'), ('38', '52', 'yes', 'gombosvren-52.docx', null, '2016-04-05 13:58:14', 'no'), ('39', '53', 'yes', 'mateo-agudelo-53.pdf', null, '2016-04-06 08:12:16', 'no'), ('40', '54', 'yes', 'sayed-ahmed-54.jpg', null, '2016-04-06 12:04:09', 'no'), ('41', '55', 'yes', 'nikoloz-natssarishvili-55.doc', null, '2016-04-06 18:21:12', 'no'), ('42', '56', 'yes', 'al-emran-56.pdf', null, '2016-04-07 02:08:30', 'no'), ('44', '58', 'yes', 'festus-iipito-58.pdf', null, '2016-04-08 16:00:17', 'no'), ('45', '59', 'yes', 'kom-59.jpg', null, '2016-04-08 16:02:20', 'no'), ('46', '60', 'yes', 'jay-alame-60.jpg', null, '2016-04-08 23:10:17', 'no'), ('47', '61', 'yes', 'mio-nome-completo-61.docx', null, '2016-04-10 00:22:17', 'no'), ('48', '65', 'yes', 'noufal-65.jpg', null, '2016-04-11 17:19:58', 'no'), ('49', '66', 'yes', 'ayhan-ergun-66.jpg', null, '2016-04-12 01:34:18', 'no'), ('50', '67', 'yes', 'fernando-67.jpg', null, '2016-04-12 10:34:48', 'no'), ('51', '68', 'yes', 'kharl-68.docx', null, '2016-04-12 14:48:43', 'no'), ('52', '69', 'yes', 'fullname-69.jpg', null, '2016-04-13 18:34:11', 'no'), ('53', '70', 'yes', 'habib-jiwan-70.docx', null, '2016-04-13 21:39:42', 'no'), ('54', '71', 'yes', 'salih-karadeniz-71.pdf', null, '2016-04-14 15:13:54', 'no'), ('55', '74', 'yes', 'std-74.pdf', null, '2016-04-15 11:39:43', 'no'), ('56', '75', 'yes', 'arjun-kumar-75.doc', null, '2016-04-15 15:22:03', 'no'), ('57', '76', 'yes', 'nagendra-yadav-76.doc', null, '2016-04-15 17:31:45', 'no'), ('58', '78', 'yes', 'deneme-deneme-78.txt', null, '2016-04-16 12:05:57', 'no'), ('59', '79', 'yes', 'md-mahabub-alam-rubel-79.pdf', null, '2016-04-17 08:31:40', 'no'), ('60', '80', 'yes', 'alex-kehr-80.pdf', null, '2016-04-17 23:21:48', 'no'), ('61', '81', 'yes', 'gouse-81.docx', null, '2016-04-18 15:25:15', 'no'), ('62', '82', 'yes', 'doan-82.pdf', null, '2016-04-19 12:05:13', 'no'), ('63', '83', 'yes', 'tiago-83.doc', null, '2016-04-20 08:54:24', 'no'), ('64', '84', 'yes', 'vehbi-84.jpg', null, '2016-04-22 03:42:30', 'no'), ('65', '85', 'yes', 'vipin-agarwal-85.docx', null, '2016-04-22 18:40:13', 'no'), ('66', '86', 'yes', 'sergey-86.docx', null, '2016-04-23 03:06:40', 'no'), ('67', '87', 'yes', 'deli-atoia-abuda-87.pdf', null, '2016-04-24 22:26:40', 'no'), ('69', '89', 'yes', 'max-azarcon-89.pdf', null, '2016-04-26 01:55:22', 'no'), ('70', '90', 'yes', 'abcd-zyx-90.jpg', null, '2016-04-28 15:03:00', 'no'), ('71', '91', 'yes', 'stanislas-bellot-91.pdf', null, '2016-05-02 06:45:03', 'no'), ('72', '92', 'yes', 'testat-92.pdf', null, '2016-05-02 11:53:02', 'no'), ('73', '93', 'yes', 'qartes-93.jpg', null, '2016-05-03 05:54:41', 'no'), ('74', '94', 'yes', 'sayali-94.jpg', null, '2016-05-03 10:35:10', 'no'), ('75', '95', 'yes', 'john-doe-95.pdf', null, '2016-05-04 16:39:17', 'no'), ('76', '97', 'yes', 'jj-97.docx', null, '2016-05-05 15:54:34', 'no'), ('77', '98', 'yes', 'dtest-er-98.docx', null, '2016-05-05 22:55:28', 'no'), ('78', '99', 'yes', 'kevin-de-la-horra-99.txt', null, '2016-05-06 01:02:08', 'no'), ('79', '100', 'yes', 'sean-brogan-100.jpg', null, '2016-05-06 18:22:12', 'no'), ('80', '102', 'yes', 'u-alan-102.pdf', null, '2016-05-07 22:39:29', 'no'), ('81', '103', 'yes', 'markettom-103.docx', null, '2016-05-08 11:15:53', 'no'), ('82', '105', 'yes', 'teste-105.doc', null, '2016-05-10 03:10:00', 'no'), ('83', '106', 'yes', 'alex-muurphy-106.doc', null, '2016-05-11 11:34:48', 'no'), ('84', '107', 'yes', 'gandhi-107.pdf', null, '2016-05-12 07:34:23', 'no'), ('85', '108', 'yes', 'dddddddddddddddd-108.doc', null, '2016-05-12 23:30:55', 'no'), ('86', '109', 'yes', 'jean-val-109.docx', null, '2016-05-13 20:24:42', 'no'), ('87', '110', 'yes', 'raakesh-kumar-110.pdf', null, '2016-05-13 21:13:28', 'no'), ('88', '111', 'yes', 'shaik-jilani-111.doc', null, '2016-05-15 01:20:46', 'no'), ('89', '113', 'yes', 'kevin-de-la-horra-113.docx', null, '2016-05-15 16:32:39', 'no'), ('90', '114', 'yes', 'asmaa-114.jpg', null, '2016-05-16 17:04:46', 'no'), ('91', '115', 'yes', 'test-115.jpg', null, '2016-05-16 17:17:43', 'no'), ('92', '116', 'yes', 'biniyam-116.doc', null, '2016-05-16 17:23:56', 'no'), ('93', '117', 'yes', 'abraiz-khan-117.docx', null, '2016-05-16 22:51:31', 'no'), ('94', '118', 'yes', 'razor-118.jpg', null, '2016-05-17 03:29:40', 'no'), ('95', '119', 'yes', 'anibal-centurion-119.jpg', null, '2016-05-17 17:30:52', 'no'), ('96', '121', 'yes', 'patryk-kloz-121.docx', null, '2016-05-17 18:31:32', 'no'), ('97', '121', 'yes', 'patryk-kloz-JOBPORTAL-1211463491984.docx', null, '2016-05-17 18:33:04', 'no'), ('98', '122', 'yes', 'job-seeker-122.txt', null, '2016-05-19 00:31:47', 'no'), ('99', '123', 'yes', 'admin-123.pdf', null, '2016-05-22 12:39:40', 'no'), ('100', '124', 'yes', 'parkkichul-124.jpg', null, '2016-05-23 15:42:06', 'no'), ('101', '125', 'yes', 'ina-125.pdf', null, '2016-05-24 17:36:03', 'no'), ('102', '126', 'yes', 'pepito-piguave-126.doc', null, '2016-05-25 00:32:51', 'no'), ('103', '127', 'yes', 'shiva-127.docx', null, '2016-05-25 17:07:07', 'no'), ('105', '129', 'yes', 'altan-kastalmis-129.jpg', null, '2016-05-27 19:04:49', 'no'), ('106', '130', 'yes', 'gray-jumba-130.docx', null, '2016-05-28 22:59:08', 'no'), ('107', '132', 'yes', 'neyber-becerra-zapata-132.pdf', null, '2016-06-01 03:39:36', 'no'), ('108', '133', 'yes', 'full-name-133.doc', null, '2016-06-02 12:50:25', 'no'), ('109', '134', 'yes', 'lvcmuz-134.docx', null, '2016-06-08 15:05:33', 'no'), ('110', '135', 'yes', 'zgh-135.docx', null, '2016-06-08 23:40:44', 'no'), ('111', '136', 'yes', 'larry-barry-136.docx', null, '2016-06-09 18:59:07', 'no'), ('112', '137', 'yes', 'casper-ved-137.jpg', null, '2016-06-09 23:55:17', 'no'), ('113', '138', 'yes', 'praveen-dokania-138.doc', null, '2016-06-10 23:41:39', 'no'), ('114', '139', 'yes', 'fdsa-139.jpg', null, '2016-06-11 22:01:01', 'no'), ('115', '142', 'yes', 'qsaf-142.pdf', null, '2016-06-15 14:06:39', 'no');
COMMIT;

-- ----------------------------
--  Table structure for `pp_seeker_skills`
-- ----------------------------
DROP TABLE IF EXISTS `pp_seeker_skills`;
CREATE TABLE `pp_seeker_skills` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) DEFAULT NULL,
  `skill_name` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `js_skill_search` (`skill_name`)
) ENGINE=MyISAM AUTO_INCREMENT=309 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_seeker_skills`
-- ----------------------------
BEGIN;
INSERT INTO `pp_seeker_skills` VALUES ('1', '8', 'php'), ('2', '8', 'java'), ('3', '8', 'javascript'), ('4', '9', 'html'), ('5', '9', 'css'), ('6', '9', 'photoshop'), ('7', '9', 'illustrator'), ('8', '9', 'js'), ('9', '9', 'jquery'), ('10', '10', 'html'), ('11', '10', 'css'), ('12', '10', 'js'), ('13', '11', 'css'), ('14', '11', 'photoshop'), ('15', '11', 'designer'), ('16', '12', 'prawojazdy c'), ('17', '12', 'dobry zawodowo'), ('18', '12', 'xdddd d ddd'), ('19', '14', 'nothing'), ('20', '14', 'more'), ('21', '14', 'nix'), ('22', '15', 'computação'), ('23', '15', 'formatação'), ('24', '15', 'administração'), ('25', '16', '54'), ('26', '16', 'hiioyui'), ('27', '16', 'etyt'), ('28', '17', 'illustrator'), ('29', '18', 'demo'), ('30', '18', 'dedede'), ('31', '18', 'dedededede'), ('32', '15', 'illustrator'), ('33', '15', 'indesign'), ('34', '15', 'marketting'), ('35', '15', 'ms office'), ('36', '19', 'php'), ('37', '19', 'ms office'), ('38', '19', 'jquery'), ('40', '21', 'wordpress, html, css, php'), ('41', '21', 'wordpress'), ('42', '21', 'html'), ('43', '21', 'css'), ('44', '21', 'photoshop'), ('45', '22', 'asasasas'), ('46', '22', 'wewewew'), ('47', '22', 'wewewewe'), ('48', '23', 'medicl assistant'), ('49', '23', 'front office'), ('50', '23', 'back office'), ('51', '24', 'cvcddsr'), ('52', '24', 'gddss'), ('53', '25', 'web'), ('54', '25', 'food'), ('55', '25', 'ass'), ('56', '25', 'boobs'), ('57', '26', ', desenvolvedor, administrador, obras'), ('58', '28', 'php'), ('59', '28', 'illustrator'), ('60', '28', 'java'), ('61', '29', 'test, test, test'), ('62', '29', 'test'), ('63', '29', 'testtest'), ('64', '29', 'ok'), ('65', '30', 'wordpress'), ('66', '30', 'html'), ('67', '30', 'php'), ('68', '32', 'php'), ('69', '32', 'photoshop'), ('70', '32', 'java'), ('71', '33', 'php'), ('72', '33', 'html'), ('73', '33', 'css'), ('74', '35', 'test'), ('75', '35', 'testttt'), ('76', '36', 'web design'), ('77', '36', 'web development'), ('78', '36', 'trainer'), ('79', '37', 'html'), ('80', '37', 'css'), ('81', '37', 'sx'), ('82', '37', 'cmmi'), ('83', '38', 'php'), ('84', '41', 'develpper'), ('85', '41', 'djjdjdj'), ('86', '41', 'dskdkdk'), ('87', '42', 'excel'), ('88', '42', 'illustrator'), ('89', '42', 'informática'), ('90', '47', 'drgdqg'), ('91', '47', 'rqdghqesh'), ('92', '47', 'gshtsrrfghrts'), ('93', '48', 'photoshop'), ('94', '48', 'dd'), ('95', '48', 'illustrator'), ('96', '49', 'illustrator'), ('97', '49', 'java'), ('98', '49', 'html'), ('99', '51', '.net'), ('100', '52', 'web developer'), ('101', '53', 'php, html, css'), ('102', '53', 'php'), ('103', '53', 'css'), ('104', '54', 'indesign'), ('105', '54', 'marketting'), ('106', '55', 'php delvoper'), ('107', '55', 'ss'), ('108', '55', 'dd'), ('109', '57', 'php'), ('110', '57', 'jquery'), ('111', '57', 'informática'), ('112', '59', 'php'), ('113', '59', '.net'), ('114', '59', 'php developer'), ('115', '58', 'fghfgh'), ('116', '58', 'dghd'), ('117', '58', 'dghdgh'), ('118', '58', 'dghdfgh'), ('119', '60', 'design'), ('120', '60', 'skill'), ('121', '60', 'skill2'), ('122', '60', 'skill3'), ('123', '61', 'php'), ('124', '61', 'mysql'), ('125', '61', 'photoshop'), ('126', '65', 'illustrator'), ('127', '65', 'indesign'), ('128', '65', 'cms'), ('129', '65', 'online marketing'), ('130', '65', 'crestone'), ('131', '65', 'extron'), ('132', '66', 'dsd'), ('133', '66', 'ads'), ('134', '66', 'asd'), ('135', '67', 'desarrolo de software'), ('136', '67', 'diseño grafico'), ('137', '67', 'web'), ('138', '68', 'web design'), ('139', '69', 'photoshop'), ('140', '69', 'dreamweaver'), ('141', '69', 'html5'), ('142', '69', 'css3'), ('143', '70', 'programmer, designer, writer'), ('144', '70', 'programmer'), ('145', '70', 'designer'), ('146', '70', 'writer'), ('147', '74', 'php'), ('148', '74', 'css'), ('149', '74', 'html'), ('150', '75', 'embedded testing'), ('151', '75', 'printer domain'), ('152', '75', 'testing'), ('157', '76', 'html'), ('155', '76', 'js'), ('158', '76', 'css'), ('159', '78', 'php developer'), ('160', '78', 'php'), ('161', '78', 'mysql'), ('162', '79', 'html'), ('163', '79', 'css'), ('164', '80', 'marketting'), ('165', '80', 'php'), ('166', '80', 'html'), ('167', '81', 'java'), ('168', '81', 'jquery'), ('169', '81', 'informática'), ('170', '84', 'atley-t'), ('171', '85', 'web design, seo, development'), ('172', '85', 'seo'), ('173', '85', 'web design'), ('174', '86', 'php'), ('175', '86', 'word'), ('176', '86', 'ffgh'), ('177', '87', 'php'), ('178', '87', 'photoshop'), ('179', '87', 'java'), ('180', '88', 'accountant, cost accountant, acca'), ('181', '88', 'fw'), ('182', '88', 'qwefw'), ('183', '89', 'html'), ('184', '89', 'css'), ('185', '89', 'jquery'), ('186', '90', 'php;mysql'), ('187', '90', 'qqq'), ('188', '90', 'ert'), ('189', '91', 'informaticien'), ('190', '91', 'administrateur de réseau'), ('191', '91', 'developpeur'), ('192', '92', 'test'), ('193', '92', 'cctv'), ('194', '92', 'software'), ('195', '92', 'hello'), ('196', '92', 'hr'), ('197', '93', 'marketting'), ('198', '93', 'informática'), ('199', '93', 'jquery'), ('200', '93', 'mysql'), ('201', '94', 'designer'), ('202', '94', 'website developer'), ('203', '94', 'photoshop'), ('204', '95', 'yes'), ('205', '95', 'no'), ('206', '95', 'marketting'), ('207', '97', 'aaa'), ('208', '97', 'dd'), ('209', '99', 'adasd'), ('210', '99', 'asdfasdf'), ('211', '99', 'sdfgdsfg'), ('212', '100', 'sfsff'), ('213', '100', 'sdfdf'), ('214', '100', 'dfsff'), ('215', '102', 'web'), ('216', '102', 'php coder, desing'), ('217', '102', 'desin'), ('218', '103', 'php developer, php coder, php programmer, website developer, word press, java script, js, ajax etc'), ('219', '105', 'indesign'), ('220', '105', 'html'), ('221', '105', 'photoshop'), ('222', '106', 'php'), ('223', '107', 'vendedor'), ('224', '107', 'cabesero'), ('225', '107', 'tematico'), ('226', '108', 'mmmm'), ('227', '108', 'bjhbjmh'), ('228', '108', 'nkjknkjn'), ('229', '109', 'seo'), ('230', '109', 'sem'), ('231', '109', 'kick boxing'), ('232', '110', 'php,python,java'), ('233', '110', 'php'), ('234', '110', 'python'), ('235', '110', 'java'), ('236', '111', 'php'), ('237', '111', 'java'), ('238', '111', '.net'), ('239', '111', 'oracle'), ('240', '113', 'programmer'), ('241', '113', 'desings'), ('242', '113', 'informatic'), ('243', '114', 'word press'), ('244', '115', 'test'), ('245', '116', 'php developer'), ('246', '116', 'php programmer'), ('247', '116', 'website developer'), ('248', '116', 'chartered accountant'), ('249', '117', 'php,'), ('250', '117', 'wordpress'), ('251', '117', 'html'), ('252', '121', 'html'), ('255', '121', 'testing2'), ('254', '121', 'testing'), ('256', '121', 'java'), ('257', '122', 'php'), ('258', '122', '.net'), ('259', '122', 'java'), ('260', '123', 'indesign'), ('305', '123', 'photoshop'), ('262', '124', 'sdfdsf'), ('263', '124', 'dsfdsf'), ('264', '124', 'dsfdsfff'), ('265', '124', 'ssdfdsfddddddd'), ('266', '125', 'no'), ('267', '125', 'dsg'), ('268', '126', 'html5'), ('269', '126', 'css3'), ('270', '126', 'php'), ('271', '127', 'java'), ('272', '128', 'php'), ('273', '128', 'java'), ('274', '128', 'indesign'), ('275', '129', 'cv'), ('276', '129', 'computer'), ('277', '129', 'php'), ('278', '130', 'banker'), ('279', '130', 'accountant'), ('280', '130', 'analyst'), ('281', '132', 'marketting'), ('282', '132', 'indesign'), ('283', '132', 'photoshop'), ('284', '132', 'php'), ('285', '133', 'jkjkjkjkj'), ('286', '133', 'hjhjhj'), ('287', '133', 'kkkk'), ('289', '135', 'illustrator'), ('290', '136', 'indesing'), ('291', '136', 'photoshop'), ('292', '136', 'graphic designer'), ('293', '137', 'html'), ('294', '137', 'css'), ('295', '137', 'java'), ('296', '138', 'html'), ('297', '138', 'php'), ('298', '138', 'css'), ('299', '139', 'html'), ('300', '139', 'css'), ('301', '139', 'java'), ('302', '142', 'xml'), ('303', '142', 'java'), ('304', '142', 'php'), ('306', '123', 'css'), ('307', '114', 'java'), ('308', '114', 'php');
COMMIT;

-- ----------------------------
--  Table structure for `pp_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `pp_sessions`;
CREATE TABLE `pp_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_sessions`
-- ----------------------------
BEGIN;
INSERT INTO `pp_sessions` VALUES ('05076156c5352d0d04e40b8f6cfae4da', '159.203.81.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239947', 'a:2:{s:9:\"user_data\";s:0:\"\";s:7:\"cptcode\";s:4:\"G7K5\";}'), ('0ed2336ab84188e5abd58f850e3c178d', '159.203.81.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239144', ''), ('0f2448db11ecf00d972ae557c88e8356', '2.50.149.86', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '1480244330', ''), ('137915bdd13aad682155b63594e674b0', '162.243.69.215', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239204', 'a:2:{s:9:\"user_data\";s:0:\"\";s:20:\"back_from_user_login\";s:18:\"employer/dashboard\";}'), ('17c408b2db0602e0cc9e5cf8525585f6', '162.243.69.215', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239195', 'a:2:{s:9:\"user_data\";s:0:\"\";s:21:\"back_from_admin_login\";s:15:\"admin/dashboard\";}'), ('1b3186a711802e50050e8ec1dbd49aa2', '162.243.69.215', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239227', 'a:2:{s:9:\"user_data\";s:0:\"\";s:21:\"back_from_admin_login\";s:27:\"admin/job_seekers/login/142\";}'), ('1f064afe17eb492382b09af0782cf095', '13.76.241.210', 'Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5', '1480239912', ''), ('1f7152cb204cbde65aa53d34fb19e9ea', '159.203.81.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239209', 'a:2:{s:9:\"user_data\";s:0:\"\";s:20:\"back_from_user_login\";s:23:\"jobseeker/matching_jobs\";}'), ('3618adade20c12bb8826d93c832024b1', '115.186.165.89', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '1480258339', 'a:11:{s:9:\"user_data\";s:0:\"\";s:20:\"back_from_user_login\";s:23:\"jobseeker/matching_jobs\";s:8:\"admin_id\";s:1:\"1\";s:4:\"name\";s:4:\"demo\";s:14:\"is_admin_login\";b:1;s:7:\"user_id\";s:3:\"142\";s:10:\"user_email\";s:13:\"zied.ds@hh.ds\";s:10:\"first_name\";s:4:\"qsaf\";s:13:\"is_user_login\";b:1;s:13:\"is_job_seeker\";b:1;s:11:\"is_employer\";b:0;}'), ('36b01e22c4f98f8819bd16db9a42b229', '159.203.42.143', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239220', 'a:1:{s:9:\"user_data\";s:0:\"\";}'), ('3743a964ae7e7ded5486cfed476e9ec4', '2.50.150.129', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36', '1480250743', 'a:2:{s:9:\"user_data\";s:0:\"\";s:20:\"back_from_user_login\";s:23:\"jobseeker/matching_jobs\";}'), ('51320d0e2989385cf7ad34abe2d0f5a9', '162.243.69.215', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480258354', 'a:2:{s:9:\"user_data\";s:0:\"\";s:21:\"back_from_admin_login\";s:17:\"admin/job_seekers\";}'), ('5ba845f9407c86938cb72e3be75881f5', '107.170.96.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239144', ''), ('6f2b1a0610a862ef93954fbd599fedaa', '159.203.81.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239227', 'a:2:{s:9:\"user_data\";s:0:\"\";s:20:\"back_from_user_login\";s:19:\"jobseeker/dashboard\";}'), ('7c75eb52b076de215c8e07d5f60ce52b', '138.197.202.197', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239203', 'a:2:{s:9:\"user_data\";s:0:\"\";s:21:\"back_from_admin_login\";s:24:\"admin/employers/login/80\";}'), ('84e1ee2bcc6486c4bddc0e4a0f7f0b45', '107.170.96.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239200', 'a:2:{s:9:\"user_data\";s:0:\"\";s:21:\"back_from_admin_login\";s:15:\"admin/employers\";}'), ('860f941d8c2642d34e9123380f599b69', '107.170.96.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239919', 'a:2:{s:9:\"user_data\";s:0:\"\";s:20:\"back_from_user_login\";s:20:\"jobseeker/cv_manager\";}'), ('961e65da12e009a52f42d26b749599ee', '2.50.150.129', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36', '1480276825', 'a:3:{s:9:\"user_data\";s:0:\"\";s:20:\"back_from_user_login\";s:26:\"candidate/7c66596259465f3d\";s:7:\"cptcode\";s:4:\"B4W8\";}'), ('9c4b9b164acc8562c1131767ecb7caa3', '138.197.202.197', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239215', 'a:2:{s:9:\"user_data\";s:0:\"\";s:20:\"back_from_user_login\";s:23:\"employer/my_posted_jobs\";}'), ('a4acd97aac0950a1ed6bc0c1da519ccd', '58.65.146.189', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '1480240581', 'a:12:{s:9:\"user_data\";s:0:\"\";s:8:\"admin_id\";s:1:\"1\";s:4:\"name\";s:4:\"demo\";s:14:\"is_admin_login\";b:1;s:10:\"user_email\";s:13:\"zied.ds@hh.ds\";s:10:\"first_name\";s:4:\"qsaf\";s:20:\"back_from_user_login\";s:23:\"jobseeker/matching_jobs\";s:7:\"user_id\";s:3:\"142\";s:13:\"is_user_login\";b:1;s:13:\"is_job_seeker\";b:1;s:11:\"is_employer\";b:0;s:7:\"cptcode\";s:4:\"X3FD\";}'), ('b227ba69b83a0b4212637fc68c618e9a', '23.99.101.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5', '1480244323', 'a:2:{s:9:\"user_data\";s:0:\"\";s:20:\"back_from_user_login\";s:23:\"jobseeker/matching_jobs\";}'), ('b4678dc48ccd9a4abcea4b72c2a5d188', '159.203.42.143', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239930', 'a:2:{s:9:\"user_data\";s:0:\"\";s:20:\"back_from_user_login\";s:37:\"jobseeker/edit_jobseeker/upload_photo\";}'), ('ee77d9b82bc32a4bfefb5084559e7567', '162.243.69.215', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', '1480239217', 'a:2:{s:9:\"user_data\";s:0:\"\";s:20:\"back_from_user_login\";s:25:\"employer/job_applications\";}');
COMMIT;

-- ----------------------------
--  Table structure for `pp_settings`
-- ----------------------------
DROP TABLE IF EXISTS `pp_settings`;
CREATE TABLE `pp_settings` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `emails_per_hour` int(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_settings`
-- ----------------------------
BEGIN;
INSERT INTO `pp_settings` VALUES ('1', '300');
COMMIT;

-- ----------------------------
--  Table structure for `pp_skills`
-- ----------------------------
DROP TABLE IF EXISTS `pp_skills`;
CREATE TABLE `pp_skills` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(40) DEFAULT NULL,
  `industry_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pp_skills`
-- ----------------------------
BEGIN;
INSERT INTO `pp_skills` VALUES ('1', 'html', null), ('2', 'php', null), ('3', 'js', null), ('4', '.net', null), ('5', 'css', null), ('6', 'jquery', null), ('7', 'java', null), ('8', 'photoshop', null), ('9', 'illustrator', null), ('10', 'Indesign', null), ('11', 'mysql', null), ('12', 'Ms Office', null), ('13', 'Marketting', null), ('14', 'informática', null), ('15', 'web', null), ('16', 'indesing', null), ('17', 'developer', null);
COMMIT;

-- ----------------------------
--  Table structure for `pp_stories`
-- ----------------------------
DROP TABLE IF EXISTS `pp_stories`;
CREATE TABLE `pp_stories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) NOT NULL,
  `is_featured` enum('yes','no') DEFAULT 'no',
  `sts` enum('active','inactive') DEFAULT 'inactive',
  `title` varchar(250) DEFAULT NULL,
  `story` text,
  `dated` datetime DEFAULT NULL,
  `ip_address` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tbl_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_gallery`;
CREATE TABLE `tbl_gallery` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `image_caption` varchar(150) DEFAULT NULL,
  `image_name` varchar(155) DEFAULT NULL,
  `dated` datetime DEFAULT NULL,
  `sts` enum('inactive','active') DEFAULT 'active',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `tbl_gallery`
-- ----------------------------
BEGIN;
INSERT INTO `tbl_gallery` VALUES ('1', 'Test', 'portfolio-2.jpg', '2015-09-05 18:16:41', 'active'), ('2', '', 'portfolio-1.jpg', '2015-09-05 21:17:59', 'active'), ('3', '', 'portfolio-3.jpg', '2015-09-05 21:22:19', 'active'), ('4', '', 'portfolio-6.jpg', '2015-09-05 21:22:29', 'active'), ('5', '', 'portfolio-7.jpg', '2015-09-05 21:22:38', 'active'), ('6', '', 'portfolio-8.jpg', '2015-09-05 21:22:53', 'active'), ('7', '', 'portfolio-9.jpg', '2015-09-05 21:23:05', 'active'), ('8', 'Walk with the Queen... But be careful!', 'portfolio-10.jpg', '2015-09-05 21:23:16', 'inactive'), ('9', 'Bla bla bla Bla bla bla Bla bla bla Bla bla bla Bla bla bla Bla bla bla Bla bla bla Bla bla bla Bla.', 'portfolio-11.jpg', '2015-09-05 21:23:24', 'active'), ('10', 'Beatuiful Bubble', 'portfolio-12.jpg', '2015-09-05 21:23:32', 'active');
COMMIT;

-- ----------------------------
--  Procedure structure for `count_active_opened_jobs`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_active_opened_jobs`;
delimiter ;;
CREATE  PROCEDURE `count_active_opened_jobs`()
BEGIN
	#Routine body goes here...
	SELECT COUNT(ID) as total
	FROM `pp_post_jobs` AS pj
	WHERE pj.sts='active' AND CURRENT_DATE < pj.last_date;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `count_active_opened_jobs_by_company_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_active_opened_jobs_by_company_id`;
delimiter ;;
CREATE  PROCEDURE `count_active_opened_jobs_by_company_id`(IN comp_id INT(11))
BEGIN
	#Routine body goes here...
	SELECT COUNT(ID) as total
	FROM `pp_post_jobs` AS pj
	WHERE pj.company_ID=comp_id AND pj.sts='active';
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `count_active_records_by_city_front_end`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_active_records_by_city_front_end`;
delimiter ;;
CREATE  PROCEDURE `count_active_records_by_city_front_end`(IN city VARCHAR(40))
BEGIN
	#Routine body goes here...
	SELECT COUNT(pj.ID) AS total
	FROM `pp_post_jobs` AS pj
	INNER JOIN pp_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.city=city AND pj.sts='active' AND pc.sts = 'active';
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `count_active_records_by_industry_front_end`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_active_records_by_industry_front_end`;
delimiter ;;
CREATE  PROCEDURE `count_active_records_by_industry_front_end`(IN industry_id INT(11))
BEGIN
	SELECT COUNT(pj.ID) AS total
	FROM `pp_post_jobs` AS pj
	INNER JOIN pp_companies AS pc ON pj.company_ID=pc.ID
	INNER JOIN pp_job_industries AS ji ON pj.industry_ID=ji.ID
	WHERE pj.industry_ID=industry_id AND pj.sts='active' AND pc.sts = 'active';
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `count_all_posted_jobs_by_company_id_frontend`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_all_posted_jobs_by_company_id_frontend`;
delimiter ;;
CREATE  PROCEDURE `count_all_posted_jobs_by_company_id_frontend`(IN comp_id INT(11))
BEGIN
	#Routine body goes here...
	SELECT COUNT(pj.ID) AS total
	FROM `pp_post_jobs` AS pj
	INNER JOIN pp_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.company_ID=comp_id AND pj.sts='active' AND pc.sts = 'active';
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `count_applied_jobs_by_employer_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_applied_jobs_by_employer_id`;
delimiter ;;
CREATE  PROCEDURE `count_applied_jobs_by_employer_id`(IN employer_id INT(11))
BEGIN
	SELECT COUNT(pp_seeker_applied_for_job.ID) AS total
	FROM `pp_seeker_applied_for_job`
	INNER JOIN pp_post_jobs ON pp_post_jobs.ID=pp_seeker_applied_for_job.job_ID
	INNER JOIN pp_job_seekers ON pp_job_seekers.ID=pp_seeker_applied_for_job.seeker_ID
	WHERE pp_post_jobs.employer_ID=employer_id;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `count_applied_jobs_by_jobseeker_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_applied_jobs_by_jobseeker_id`;
delimiter ;;
CREATE  PROCEDURE `count_applied_jobs_by_jobseeker_id`(IN jobseeker_id INT(11))
BEGIN
	SELECT COUNT(pp_seeker_applied_for_job.ID) AS total
	FROM `pp_seeker_applied_for_job`
	WHERE pp_seeker_applied_for_job.seeker_ID=jobseeker_id;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `count_ft_job_search_filter_3`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_ft_job_search_filter_3`;
delimiter ;;
CREATE  PROCEDURE `count_ft_job_search_filter_3`(IN param_city VARCHAR(255), param_company_slug VARCHAR(255), param_title VARCHAR(255))
BEGIN
	SELECT COUNT(pj.ID) as total
	FROM pp_post_jobs pj
	INNER JOIN pp_companies pc ON pc.ID = pj.company_ID 
	WHERE (pj.job_title like CONCAT("%",param,"%") OR pj.job_description like CONCAT("%",param,"%") OR pj.required_skills like CONCAT("%",param,"%"))
AND pc.company_slug = param_company_slug AND pj.city = param_city AND pj.sts = 'active' AND pc.sts = 'active';
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `count_ft_search_job`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_ft_search_job`;
delimiter ;;
CREATE  PROCEDURE `count_ft_search_job`(IN param VARCHAR(255), param2 VARCHAR(255))
BEGIN
	SELECT COUNT(pc.ID) as total
	FROM `pp_post_jobs` pj 
	INNER JOIN pp_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.sts = 'active' AND pc.sts = 'active'
AND (pj.job_title like CONCAT("%",param,"%") OR pj.job_description like CONCAT("%",param,"%") OR pj.required_skills like CONCAT("%",param,"%"))
AND pj.city like CONCAT("%",param2,"%");
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `count_ft_search_resume`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_ft_search_resume`;
delimiter ;;
CREATE  PROCEDURE `count_ft_search_resume`(IN param VARCHAR(255))
BEGIN
	SELECT COUNT(DISTINCT ss.ID) as total
	FROM `pp_job_seekers` js 
	INNER JOIN pp_seeker_skills AS ss ON js.ID=ss.seeker_ID
	WHERE js.sts = 'active' 
AND ss.skill_name like CONCAT('%',param,'%');
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `count_search_posted_jobs`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_search_posted_jobs`;
delimiter ;;
CREATE  PROCEDURE `count_search_posted_jobs`(IN where_condition VARCHAR(255))
BEGIN
	#Routine body goes here...
SET @query = "SELECT COUNT(pj.ID) as total
	FROM `pp_post_jobs` pj 
	LEFT JOIN pp_companies AS pc ON pj.company_ID=pc.ID 
	WHERE
";

SET @where_clause = CONCAT(where_condition);
SET @query = CONCAT(@query, @where_clause);

PREPARE stmt FROM @query;
EXECUTE stmt;

END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `ft_job_search_filter_3`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ft_job_search_filter_3`;
delimiter ;;
CREATE  PROCEDURE `ft_job_search_filter_3`(IN param_city VARCHAR(255), param_company_slug VARCHAR(255), param_title VARCHAR(255), from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug, MATCH(pj.job_title, pj.job_description) AGAINST( param_title ) AS score
	FROM pp_post_jobs pj
	INNER JOIN pp_companies pc ON pc.ID = pj.company_ID 
	WHERE (pj.job_title like CONCAT("%",param_title,"%") OR pj.job_description like CONCAT("%",param_title,"%") OR pj.required_skills like CONCAT("%",param_title,"%")) 
AND pc.company_slug = param_company_slug AND pj.city = param_city AND pj.sts = 'active' AND pc.sts = 'active'

ORDER BY score DESC
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `ft_search_job`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ft_search_job`;
delimiter ;;
CREATE  PROCEDURE `ft_search_job`(IN param VARCHAR(255), param2 VARCHAR(255), from_limit INT(5), to_limit INT(5))
BEGIN

	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug, MATCH(pj.job_title, pj.job_description) AGAINST(param) AS score
	FROM `pp_post_jobs` pj 
	INNER JOIN pp_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.sts = 'active' AND pc.sts = 'active' 
	AND (
			pj.job_title like CONCAT("%",param,"%") 
			OR pj.job_description like CONCAT("%",param,"%") 
			OR pj.required_skills like CONCAT("%",param,"%") 
			OR pj.pay like CONCAT("%",REPLACE(param,' ','-'),"%")
			OR pj.city like CONCAT("%",param,"%")
		)
		AND (pj.city) like CONCAT("%",param2,"%")
ORDER BY pj.ID DESC
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `ft_search_jobs_group_by_city`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ft_search_jobs_group_by_city`;
delimiter ;;
CREATE  PROCEDURE `ft_search_jobs_group_by_city`(IN param VARCHAR(255))
BEGIN
	SELECT city, COUNT(city) as score
	FROM `pp_post_jobs` pj 
	WHERE pj.sts = 'active' 
AND (
			pj.job_title like CONCAT("%",param,"%") 
			OR pj.job_description like CONCAT("%",param,"%") 
			OR pj.required_skills like CONCAT("%",param,"%") 
			OR pj.pay like CONCAT("%",REPLACE(param,' ','-'),"%")
			OR pj.city like CONCAT("%",param,"%")
		)
	GROUP BY city
	ORDER BY score DESC
	LIMIT 0,5;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `ft_search_jobs_group_by_company`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ft_search_jobs_group_by_company`;
delimiter ;;
CREATE  PROCEDURE `ft_search_jobs_group_by_company`(IN param VARCHAR(255))
BEGIN
	SELECT  pc.company_name,pc.company_slug, COUNT(pc.company_name) as score
	FROM `pp_post_jobs` pj 
	INNER JOIN pp_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.sts = 'active' AND pc.sts = 'active' 
AND (
			pj.job_title like CONCAT("%",param,"%") 
			OR pj.job_description like CONCAT("%",param,"%") 
			OR pj.required_skills like CONCAT("%",param,"%") 
			OR pj.pay like CONCAT("%",REPLACE(param,' ','-'),"%")
			OR pj.city like CONCAT("%",param,"%")
		)
	GROUP BY pc.company_name
	ORDER BY score DESC
	LIMIT 0,5;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `ft_search_jobs_group_by_salary_range`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ft_search_jobs_group_by_salary_range`;
delimiter ;;
CREATE  PROCEDURE `ft_search_jobs_group_by_salary_range`(IN param VARCHAR(255))
BEGIN
	SELECT pay, COUNT(pay) as score
	FROM `pp_post_jobs` pj 
	WHERE pj.sts = 'active' 
AND (
			pj.job_title like CONCAT("%",param,"%") 
			OR pj.job_description like CONCAT("%",param,"%") 
			OR pj.required_skills like CONCAT("%",param,"%") 
			OR pj.pay like CONCAT("%",REPLACE(param,' ','-'),"%")
			OR pj.city like CONCAT("%",param,"%")
		)
	GROUP BY pay
	ORDER BY score DESC
	LIMIT 0,5;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `ft_search_jobs_group_by_title`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ft_search_jobs_group_by_title`;
delimiter ;;
CREATE  PROCEDURE `ft_search_jobs_group_by_title`(IN param VARCHAR(255))
BEGIN
	SELECT job_title, COUNT(job_title) as score
	FROM `pp_post_jobs` pj 
	WHERE pj.sts = 'active' 
AND (
			pj.job_title like CONCAT("%",param,"%") 
			OR pj.job_description like CONCAT("%",param,"%") 
			OR pj.required_skills like CONCAT("%",param,"%") 
			OR pj.pay like CONCAT("%",REPLACE(param,' ','-'),"%")
			OR pj.city like CONCAT("%",param,"%")
		)

	GROUP BY job_title
	ORDER BY score DESC
	LIMIT 0,5;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `ft_search_resume`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ft_search_resume`;
delimiter ;;
CREATE  PROCEDURE `ft_search_resume`(IN param VARCHAR(255), from_limit INT(5), to_limit INT(5))
BEGIN
  SELECT js.ID, js.first_name, js.gender, js.dob, js.city, js.photo
	FROM pp_job_seekers AS js
	INNER JOIN pp_seeker_skills AS ss ON js.ID=ss.seeker_ID
	WHERE js.sts = 'active' AND ss.skill_name like CONCAT("%",param,"%")
  GROUP BY ss.seeker_ID
	ORDER BY js.ID DESC
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_active_deactive_posted_job_by_company_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_active_deactive_posted_job_by_company_id`;
delimiter ;;
CREATE  PROCEDURE `get_active_deactive_posted_job_by_company_id`(IN comp_id INT(11), from_limit INT(4), to_limit INT(4))
BEGIN
	#Routine body goes here...
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.job_description, pj.employer_ID, pj.last_date, pj.dated, pj.city, pj.is_featured, pj.sts, pc.company_name, pc.company_logo
	FROM `pp_post_jobs` AS pj
	INNER JOIN pp_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.company_ID=comp_id AND pj.sts IN ('active', 'inactive', 'pending') AND pc.sts = 'active'
	ORDER BY ID DESC
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_active_featured_job`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_active_featured_job`;
delimiter ;;
CREATE  PROCEDURE `get_active_featured_job`(IN from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug 
	FROM `pp_post_jobs` pj 
	LEFT JOIN pp_companies AS pc ON pj.company_ID=pc.ID 
	WHERE pj.is_featured='yes' AND pj.sts='active' AND pc.sts = 'active'
	ORDER BY ID DESC 
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_active_posted_job_by_company_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_active_posted_job_by_company_id`;
delimiter ;;
CREATE  PROCEDURE `get_active_posted_job_by_company_id`(IN comp_id INT(11), from_limit INT(4), to_limit INT(4))
BEGIN
	#Routine body goes here...
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.job_description, pj.employer_ID, pj.last_date, pj.dated, pj.city, pj.is_featured, pj.sts, pc.company_name, pc.company_logo
	FROM `pp_post_jobs` AS pj
	INNER JOIN pp_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.company_ID=comp_id AND pj.sts='active' AND pc.sts = 'active'
	ORDER BY ID DESC
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_active_posted_job_by_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_active_posted_job_by_id`;
delimiter ;;
CREATE  PROCEDURE `get_active_posted_job_by_id`(IN job_id INT(11))
BEGIN
	SELECT pp_post_jobs.*, pc.ID AS CID, emp.first_name, emp.email AS employer_email, pp_job_industries.industry_name, pc.company_name, pc.company_email, pc.company_ceo, pc.company_description, pc.company_logo, pc.company_phone, pc.company_website, pc.company_fax,pc.no_of_offices, pc.no_of_employees, pc.established_in, pc.industry_ID AS cat_ID, pc.company_location, pc.company_slug
,emp.city as emp_city, emp.country as emp_country	
FROM `pp_post_jobs` 
	INNER JOIN pp_companies AS pc ON pp_post_jobs.company_ID=pc.ID
	INNER JOIN pp_employers AS emp ON pc.ID=emp.company_ID
	INNER JOIN pp_job_industries ON pp_post_jobs.industry_ID=pp_job_industries.ID
	WHERE pp_post_jobs.ID=job_id AND pp_post_jobs.sts='active' AND pc.sts = 'active';
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_all_active_employers`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_all_active_employers`;
delimiter ;;
CREATE  PROCEDURE `get_all_active_employers`(IN from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pc.ID AS CID, pc.company_name, pc.company_logo, pc.company_slug
	FROM `pp_employers` emp 
	INNER JOIN pp_companies AS pc ON emp.company_ID=pc.ID
	WHERE emp.sts = 'active'
	ORDER BY emp.ID DESC 
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_all_active_top_employers`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_all_active_top_employers`;
delimiter ;;
CREATE  PROCEDURE `get_all_active_top_employers`(IN from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pc.ID AS CID, pc.company_name, pc.company_logo, pc.company_slug
	FROM `pp_employers` emp 
	INNER JOIN pp_companies AS pc ON emp.company_ID=pc.ID
	WHERE emp.sts = 'active' AND emp.top_employer = 'yes'
	ORDER BY emp.ID DESC 
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_all_opened_jobs`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_all_opened_jobs`;
delimiter ;;
CREATE  PROCEDURE `get_all_opened_jobs`(IN from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug, ji.industry_name 
	FROM `pp_post_jobs` pj 
	INNER JOIN pp_companies AS pc ON pj.company_ID=pc.ID
	INNER JOIN pp_job_industries AS ji ON pj.industry_ID=ji.ID
	WHERE pj.sts = 'active' AND pc.sts='active'
	ORDER BY pj.ID DESC 
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_all_posted_jobs`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_all_posted_jobs`;
delimiter ;;
CREATE  PROCEDURE `get_all_posted_jobs`(IN from_limit INT(5), to_limit INT(5))
BEGIN
	#Routine body goes here...
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug, pj.ip_address 
	FROM `pp_post_jobs` pj 
	INNER JOIN pp_companies AS pc ON pj.company_ID=pc.ID 
	ORDER BY ID DESC 
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_all_posted_jobs_by_company_id_frontend`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_all_posted_jobs_by_company_id_frontend`;
delimiter ;;
CREATE  PROCEDURE `get_all_posted_jobs_by_company_id_frontend`(IN comp_id INT(11), from_limit INT(4), to_limit INT(4))
BEGIN
	#Routine body goes here...
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.job_description, pj.employer_ID, pj.last_date, pj.dated, pj.city, pj.is_featured, pj.sts, pc.company_name, pc.company_logo
	FROM `pp_post_jobs` AS pj
	INNER JOIN pp_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.company_ID=comp_id AND pj.sts='active' AND pc.sts = 'active'
	ORDER BY ID DESC
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_all_posted_jobs_by_status`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_all_posted_jobs_by_status`;
delimiter ;;
CREATE  PROCEDURE `get_all_posted_jobs_by_status`(IN job_status VARCHAR(10), from_limit INT(5), to_limit INT(5))
BEGIN
	#Routine body goes here...
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug 
	FROM `pp_post_jobs` pj 
	INNER JOIN pp_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.sts = job_status
	ORDER BY ID DESC 
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_applied_jobs_by_employer_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_applied_jobs_by_employer_id`;
delimiter ;;
CREATE  PROCEDURE `get_applied_jobs_by_employer_id`(IN employer_id INT(11), from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pp_seeker_applied_for_job.dated AS applied_date, pp_post_jobs.ID, pp_post_jobs.job_title, pp_job_seekers.ID AS job_seeker_ID, pp_post_jobs.job_slug, pp_job_seekers.first_name, pp_job_seekers.last_name, pp_job_seekers.slug
	FROM `pp_seeker_applied_for_job`
	INNER JOIN pp_post_jobs ON pp_post_jobs.ID=pp_seeker_applied_for_job.job_ID
	INNER JOIN pp_job_seekers ON pp_job_seekers.ID=pp_seeker_applied_for_job.seeker_ID
	WHERE pp_post_jobs.employer_ID=employer_id 
	ORDER BY pp_seeker_applied_for_job.ID DESC 
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_applied_jobs_by_jobseeker_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_applied_jobs_by_jobseeker_id`;
delimiter ;;
CREATE  PROCEDURE `get_applied_jobs_by_jobseeker_id`(IN jobseeker_id INT(11), from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pp_seeker_applied_for_job.ID as applied_id, pp_seeker_applied_for_job.dated AS applied_date, pp_post_jobs.ID, pp_post_jobs.job_title, pp_post_jobs.job_slug, pp_companies.company_name, pp_companies.company_slug, pp_companies.company_logo 
	FROM `pp_seeker_applied_for_job`
	INNER JOIN pp_post_jobs ON pp_post_jobs.ID=pp_seeker_applied_for_job.job_ID
	INNER JOIN pp_employers ON pp_employers.ID=pp_post_jobs.employer_ID
	INNER JOIN pp_companies ON pp_companies.ID=pp_employers.company_ID
	WHERE pp_seeker_applied_for_job.seeker_ID=jobseeker_id 
	ORDER BY pp_seeker_applied_for_job.ID DESC 
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_applied_jobs_by_seeker_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_applied_jobs_by_seeker_id`;
delimiter ;;
CREATE  PROCEDURE `get_applied_jobs_by_seeker_id`(IN applicant_id INT(11), from_limit INT(5), to_limit INT(5))
BEGIN
	#Routine body goes here...
	SELECT aj.*, pp_post_jobs.ID AS posted_job_id, pp_post_jobs.employer_ID, pp_post_jobs.job_title, pp_post_jobs.job_slug, pp_post_jobs.city, pp_post_jobs.is_featured, pp_post_jobs.sts, pp_companies.company_name, pp_companies.company_logo, pp_job_seekers.first_name, pp_job_seekers.last_name, pp_job_seekers.photo
	FROM `pp_seeker_applied_for_job` aj
	INNER JOIN pp_job_seekers ON aj.seeker_ID=pp_job_seekers.ID
	INNER JOIN pp_post_jobs ON aj.job_ID=pp_post_jobs.ID
	INNER JOIN pp_companies ON pp_post_jobs.company_ID=pp_companies.ID
	WHERE aj.seeker_ID=applicant_id
	ORDER BY ID DESC
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_company_by_slug`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_company_by_slug`;
delimiter ;;
CREATE  PROCEDURE `get_company_by_slug`(IN slug VARCHAR(70))
BEGIN
	SELECT emp.ID AS empID, pc.ID, emp.country, emp.city, pc.company_name, pc.company_description, pc.company_location, pc.company_website, pc.no_of_employees, pc.established_in, pc.company_logo, pc.company_slug
	FROM `pp_employers` AS emp 
	INNER JOIN pp_companies AS pc ON emp.company_ID=pc.ID
	WHERE pc.company_slug=slug AND emp.sts='active';
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_experience_by_jobseeker_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_experience_by_jobseeker_id`;
delimiter ;;
CREATE  PROCEDURE `get_experience_by_jobseeker_id`(IN jobseeker_id INT(11))
BEGIN
	SELECT pp_seeker_experience.* 
	FROM `pp_seeker_experience`
	WHERE pp_seeker_experience.seeker_ID=jobseeker_id 
	ORDER BY pp_seeker_experience.start_date DESC;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_featured_job`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_featured_job`;
delimiter ;;
CREATE  PROCEDURE `get_featured_job`(IN from_limit INT(5), to_limit INT(5))
BEGIN
	#Routine body goes here...
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug 
	FROM `pp_post_jobs` pj 
	LEFT JOIN pp_companies AS pc ON pj.company_ID=pc.ID 
	WHERE pj.is_featured='yes'
	ORDER BY ID DESC 
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_latest_posted_job_by_employer_ID`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_latest_posted_job_by_employer_ID`;
delimiter ;;
CREATE  PROCEDURE `get_latest_posted_job_by_employer_ID`(IN emp_id INT(11), from_limit INT(4), to_limit INT(4))
BEGIN
	#Routine body goes here...
	SELECT pp_post_jobs.ID, pp_post_jobs.job_title, pp_post_jobs.job_slug, pp_post_jobs.employer_ID, pp_post_jobs.last_date, pp_post_jobs.dated, pp_post_jobs.city, pp_post_jobs.is_featured, pp_post_jobs.sts, pp_job_industries.industry_name, pc.company_name, pc.company_logo
	FROM `pp_post_jobs` 
	INNER JOIN pp_companies AS pc ON pp_post_jobs.company_ID=pc.ID
	INNER JOIN pp_employers AS emp ON pp_post_jobs.employer_ID=emp.ID
	INNER JOIN pp_job_industries ON pp_post_jobs.industry_ID=pp_job_industries.ID
	WHERE pp_post_jobs.employer_ID=emp_id
	ORDER BY ID DESC
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_opened_jobs_home_page`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_opened_jobs_home_page`;
delimiter ;;
CREATE  PROCEDURE `get_opened_jobs_home_page`(IN from_limit INT(5), to_limit INT(5))
BEGIN
set @prev := 0, @rownum := '';
SELECT ID, job_title, job_slug, employer_ID, company_ID, job_description, city, dated, last_date, is_featured, sts, company_name, company_logo, company_slug, industry_name 
FROM (
  SELECT ID, job_title, job_slug, employer_ID, company_ID, job_description, city, dated, last_date, is_featured, sts, company_name, company_logo, company_slug, industry_name, 
         IF( @prev <> company_ID, 
             @rownum := 1, 
             @rownum := @rownum+1 
         ) AS rank, 
         @prev := company_ID, 
         @rownum  
			FROM (
					SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, company_name, company_logo, company_slug, industry_name 
					FROM pp_post_jobs AS pj
					INNER JOIN pp_companies AS pc ON pj.company_ID=pc.ID
					INNER JOIN pp_job_industries AS ji ON pj.industry_ID=ji.ID	
					WHERE pj.sts = 'active' AND pc.sts='active'
					ORDER BY company_ID DESC, ID DESC
			) pj
) jobs_ranked 
WHERE jobs_ranked.rank <= 2
ORDER BY jobs_ranked.ID DESC 
LIMIT from_limit,to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_posted_job_by_company_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_posted_job_by_company_id`;
delimiter ;;
CREATE  PROCEDURE `get_posted_job_by_company_id`(IN comp_id INT(11), from_limit INT(4), to_limit INT(4))
BEGIN
	#Routine body goes here...
	SELECT pp_post_jobs.ID, pp_post_jobs.job_title, pp_post_jobs.job_slug, pp_post_jobs.employer_ID, pp_post_jobs.last_date, pp_post_jobs.dated, pp_post_jobs.city, pp_post_jobs.job_description, pp_post_jobs.is_featured, pp_post_jobs.sts, pp_job_industries.industry_name, pc.company_name, pc.company_logo
	FROM `pp_post_jobs` 
	INNER JOIN pp_companies AS pc ON pp_post_jobs.company_ID=pc.ID
	INNER JOIN pp_job_industries ON pp_post_jobs.industry_ID=pp_job_industries.ID
	WHERE pp_post_jobs.company_ID=comp_id
	ORDER BY ID DESC
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_posted_job_by_employer_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_posted_job_by_employer_id`;
delimiter ;;
CREATE  PROCEDURE `get_posted_job_by_employer_id`(IN emp_id INT(11), from_limit INT(4), to_limit INT(4))
BEGIN
	#Routine body goes here...
	SELECT pp_post_jobs.ID, pp_post_jobs.job_title, pp_post_jobs.job_slug, pp_post_jobs.job_description, pp_post_jobs.contact_person, pp_post_jobs.contact_email, pp_post_jobs.contact_phone, pp_post_jobs.employer_ID, pp_post_jobs.last_date, pp_post_jobs.dated, pp_post_jobs.city, pp_post_jobs.is_featured, pp_post_jobs.sts, pp_job_industries.industry_name, pc.company_name, pc.company_logo
	FROM `pp_post_jobs` 
	INNER JOIN pp_companies AS pc ON pp_post_jobs.company_ID=pc.ID
	INNER JOIN pp_employers AS emp ON pp_post_jobs.employer_ID=emp.ID
	INNER JOIN pp_job_industries ON pp_post_jobs.industry_ID=pp_job_industries.ID
	WHERE pp_post_jobs.employer_ID=emp_id
	ORDER BY ID DESC
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_posted_job_by_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_posted_job_by_id`;
delimiter ;;
CREATE  PROCEDURE `get_posted_job_by_id`(IN job_id INT(11))
BEGIN
	#Routine body goes here...
	SELECT pp_post_jobs.*, pc.ID AS CID, pp_job_industries.industry_name, pc.company_name, pc.company_email, pc.company_ceo, pc.company_description, pc.company_logo, pc.company_phone, pc.company_website, pc.company_fax,pc.no_of_offices, pc.no_of_employees, pc.established_in, pc.industry_ID AS cat_ID, pc.company_location, pc.company_slug
,em.city as emp_city, em.country as emp_country
	FROM `pp_post_jobs` 
	INNER JOIN pp_companies AS pc ON pp_post_jobs.company_ID=pc.ID
  INNER JOIN pp_employers AS em ON pc.ID=em.company_ID
	INNER JOIN pp_job_industries ON pp_post_jobs.industry_ID=pp_job_industries.ID
	WHERE pp_post_jobs.ID=job_id;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_posted_job_by_id_employer_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_posted_job_by_id_employer_id`;
delimiter ;;
CREATE  PROCEDURE `get_posted_job_by_id_employer_id`(IN job_id INT(11), emp_id INT(11))
BEGIN
	SELECT pp_post_jobs.*, pc.ID AS CID, pp_job_industries.industry_name, pc.company_name, pc.company_email, pc.company_ceo, pc.company_description, pc.company_logo, pc.company_phone, pc.company_website, pc.company_fax,pc.no_of_offices, pc.no_of_employees, pc.established_in, pc.industry_ID AS cat_ID, pc.company_location, pc.company_slug
	FROM `pp_post_jobs` 
	INNER JOIN pp_companies AS pc ON pp_post_jobs.company_ID=pc.ID
	INNER JOIN pp_employers AS emp ON pp_post_jobs.employer_ID=emp.ID
	INNER JOIN pp_job_industries ON pp_post_jobs.industry_ID=pp_job_industries.ID
	WHERE pp_post_jobs.ID=job_id AND pp_post_jobs.employer_ID=emp_id;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `get_qualification_by_jobseeker_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_qualification_by_jobseeker_id`;
delimiter ;;
CREATE  PROCEDURE `get_qualification_by_jobseeker_id`(IN jobseeker_id INT(11))
BEGIN
	SELECT pp_seeker_academic.* 
	FROM `pp_seeker_academic`
	WHERE pp_seeker_academic.seeker_ID=jobseeker_id 
	ORDER BY pp_seeker_academic.completion_year DESC;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `job_search_by_city`
-- ----------------------------
DROP PROCEDURE IF EXISTS `job_search_by_city`;
delimiter ;;
CREATE  PROCEDURE `job_search_by_city`(IN param_city VARCHAR(255), from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug
	FROM pp_post_jobs pj
	INNER JOIN pp_companies pc ON pc.ID = pj.company_ID 
	WHERE pj.city = param_city AND pj.sts = 'active' AND pc.sts = 'active'
	ORDER BY pj.dated DESC
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `job_search_by_industry`
-- ----------------------------
DROP PROCEDURE IF EXISTS `job_search_by_industry`;
delimiter ;;
CREATE  PROCEDURE `job_search_by_industry`(IN param VARCHAR(255), from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug
	FROM pp_post_jobs pj
	INNER JOIN pp_companies pc ON pc.ID = pj.company_ID 
	WHERE pj.industry_ID = param AND pj.sts = 'active' AND pc.sts = 'active'
	ORDER BY pj.dated DESC
	LIMIT from_limit, to_limit;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `search_posted_jobs`
-- ----------------------------
DROP PROCEDURE IF EXISTS `search_posted_jobs`;
delimiter ;;
CREATE  PROCEDURE `search_posted_jobs`(IN where_condition VARCHAR(255), from_limit INT(11), to_limit INT(11))
BEGIN
	#Routine body goes here...
SET @query = "SELECT pj.ID, pj.job_title,  pj.job_slug, pj.employer_ID, pj.company_ID, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo 
	FROM `pp_post_jobs` pj 
	LEFT JOIN pp_companies AS pc ON pj.company_ID=pc.ID 
	WHERE
";

SET @where_clause = CONCAT(where_condition);
SET @after_where_clause = CONCAT("ORDER BY ID DESC LIMIT ",from_limit,", ",to_limit,"");
SET @full_search_clause = CONCAT(@where_clause, @after_where_clause);
SET @query = CONCAT(@query, @full_search_clause);

PREPARE stmt FROM @query;
EXECUTE stmt;

END
 ;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
