package com.infybuzz.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobParameter;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersInvalidException;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.core.repository.JobExecutionAlreadyRunningException;
import org.springframework.batch.core.repository.JobInstanceAlreadyCompleteException;
import org.springframework.batch.core.repository.JobRestartException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.infybuzz.request.JobParamsRequest;
import com.infybuzz.service.JobService;

@RestController
@RequestMapping("/api/job")
public class JobController {

	@Autowired
	JobService jobService;
	
	@GetMapping("/start/{jobName}")
	public String startJob(@PathVariable String jobName,
			@RequestBody List<JobParamsRequest> jobParamsRequests) throws Exception {
		jobService.startJob(jobName, jobParamsRequests);
		return "Job Started...";
	}
	
}
















