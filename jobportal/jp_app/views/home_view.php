<!DOCTYPE html>
<html lang="en">
<head>
<?php $this->load->view('common/meta_tags'); ?>
<meta name="keywords" content="jobs in USA, government jobs, online jobs in USA, latest jobs in USA,  job in USA, latest jobs">
<title><?php echo $title;?></title>
<?php $this->load->view('common/before_head_close'); ?>
</head>
<body>
<?php $this->load->view('common/after_body_open'); ?>
<div class="siteWraper">
<!--Header-->
<?php $this->load->view('common/header'); ?>
<!--/Header--> 
<!--Search Block-->
<div class="top-colSection">
  <div class="container">
    <div class="row">
      <?php $this->load->view('common/home_search');?>
      <div class="clear"></div>
    </div>
  </div>
</div>
<!--/Search Block--> 

<!--Employers-->
<div class="topemployerwrap">
<div class="container">
        <div class="titlebar">
          
            <h2>Top Employers</h2>
            <strong>Total - <?php echo $total_employers;?></strong>
          
        </div>
        <ul class="employersList">
          <?php
		 	if($top_employer_result):
				foreach($top_employer_result as $row_top_employer):
					$company_image_name = ($row_top_employer->company_logo)?$row_top_employer->company_logo:'no_logo.jpg';
		 ?>
          <li><a href="<?php echo base_url('company/'.$row_top_employer->company_slug);?>" title="Jobs in <?php echo $row_top_employer->company_name;?>"><img src="<?php echo base_url('public/uploads/employer/thumb/'.$company_image_name);?>" alt="<?php echo base_url('company/'.$row_top_employer->company_slug);?>" /></a></li>
          <?php
		  		endforeach;
			endif;
		  ?>
          <div class="clear"></div>
        </ul>
      </div>
</div>
<!--Employers Ends-->



<!--Latest Jobs Block-->
<div class="latestjobs">
<div class="container">
       
          <div class="titlebar">           
              <h2>Latest Jobs</h2>
              <strong>Total - <?php echo $total_posted_jobs;?></strong>           
          </div>
          
          
          <ul class="row joblist">
            <?php	
	  		if($latest_jobs_result):
	  		foreach($latest_jobs_result as $row_latest_jobs):
				$job_title = ellipsize(humanize($row_latest_jobs->job_title),34,1);
				$image_name = ($row_latest_jobs->company_logo)?$row_latest_jobs->company_logo:'no_logo.jpg';
	  ?>
            <li class="col-md-6">
              <div class="intlist">
                <div class="col-xs-2"><a href="<?php echo base_url('company/'.$row_latest_jobs->company_slug);?>" title="Jobs in <?php echo $row_latest_jobs->company_name;?>" class="thumbnail"><img src="<?php echo base_url('public/uploads/employer/thumb/'.$image_name);?>" alt="<?php echo base_url('company/'.$row_latest_jobs->company_slug);?>" /></a></div>
                <div class="col-xs-6"> <a href="<?php echo base_url('jobs/'.$row_latest_jobs->job_slug);?>" class="jobtitle" title="<?php echo $row_latest_jobs->job_title;?>"><?php echo $job_title;?></a> <span><a href="<?php echo base_url('company/'.$row_latest_jobs->company_slug);?>" title="Jobs in <?php echo $row_latest_jobs->company_name;?>"><?php echo $row_latest_jobs->company_name;?></a> &nbsp;-&nbsp; <?php echo $row_latest_jobs->city;?></span> </div>
                <div class="col-xs-4"> <a href="<?php echo base_url('jobs/'.$row_latest_jobs->job_slug.'?apply=yes');?>" class="applybtn" title="<?php echo $row_latest_jobs->industry_name.' Job in '.$row_latest_jobs->city;?>">Apply Now</a> </div>
                <div class="clear"></div>
              </div>
            </li>
            <?php
			endforeach;
			endif;
		?>
          </ul>

</div>
</div>
<!--/Latest Jobs Block--> 

<!--Cities-->
<div class="citiesWrap">
<div class="container">

	<div class="titlebar"><h2>United States Top Cities</h2>    </div>
    
  <ul class="citiesList row">
    <li class="col-md-3 col-sm-4"><a href="<?php echo base_url('search/new-york');?>" title="Jobs in New York">New York</a></li>
    <li class="col-md-3 col-sm-4"><a href="<?php echo base_url('search/los-angeles');?>" title="Jobs in 	Los Angeles">Los Angeles</a></li>
    <li class="col-md-3 col-sm-4"><a href="<?php echo base_url('search/chicago');?>" title="Jobs in Chicago">Chicago</a></li>
    <li class="col-md-3 col-sm-4"><a href="<?php echo base_url('search/houston');?>" title="Jobs in Houston">Houston</a></li>
    <li class="col-md-3 col-sm-4"><a href="<?php echo base_url('search/san-diego');?>" title="Jobs in San Diego">San Diego</a></li>
    <li class="col-md-3 col-sm-4"><a href="<?php echo base_url('search/san-jose');?>" title="Jobs in San Jose">San Jose</a></li>
    <li class="col-md-3 col-sm-4"><a href="<?php echo base_url('search/austin');?>" title="Jobs in Austin">Austin</a></li>
    <li class="col-md-3 col-sm-4"><a href="<?php echo base_url('search/san-francisco');?>" title="Jobs in San Francisco"> San Francisco</a></li>
    <li class="col-md-3 col-sm-4"><a href="<?php echo base_url('search/columbus');?>" title="Jobs in Columbus">Columbus</a></li>
    <li class="col-md-3 col-sm-4"><a href="<?php echo base_url('search/boston');?>" title="Jobs in Boston">Boston</a></li>
    <li class="col-md-3 col-sm-4"><a href="<?php echo base_url('search/washington');?>" title="Jobs in Washington">Washington</a></li>
    <li class="col-md-3 col-sm-4"><a href="<?php echo base_url('search/las-vegas');?>" title="Jobs in Las Vegas">Las Vegas</a></li>    
  </ul>
</div>
</div>
<!--Cities End-->


<!--Featured Jobs-->      
<div class="featuredWrap">
<div class="container">
    <div class="titlebar"> <h2>Featured Jobs</h2></div>
    	<ul class="featureJobs row">
          <?php
				if($featured_job_result):
					foreach($featured_job_result as $row_featured_job):
			?>
          <li class="col-md-6">
          	<div class="intbox">
            <div class="compnyinfo">
            <a href="<?php echo base_url('jobs/'.$row_featured_job->job_slug);?>" title="<?php echo $row_featured_job->job_title;?>"><?php echo $row_featured_job->job_title;?></a> <span><a href="<?php echo base_url('company/'.$row_featured_job->company_slug);?>" title="Jobs in <?php echo $row_featured_job->company_name;?>"><?php echo $row_featured_job->company_name;?></a> &nbsp;-&nbsp; <?php echo $row_featured_job->city;?></span> </div>
            <div class="date">Apply by <br />
              <?php echo date_formats($row_latest_jobs->last_date, 'M d, Y');?></div>
            <div class="clear"></div>
            </div>
          </li>
          <?php endforeach; endif; ?>
        </ul>
</div>
</div>
<!--Featured Jobs End-->


<div class="container"><div class="advertise"><?php echo $ads_row->bottom;?></div></div>


<!--Footer-->
<?php $this->load->view('common/footer'); ?>
<?php $this->load->view('common/before_body_close'); ?>
<!-- FlexSlider --> 
<script src="<?php echo base_url('public/js/jquery.flexslider.js');?>" type="text/javascript"></script> 
<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    animationLoop: false,
    itemWidth: 250,
    minItems: 1,
    maxItems: 1
  });
});
</script>
</body>
</html>