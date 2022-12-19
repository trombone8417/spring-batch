package com.infybuzz.listener;

import java.io.File;
import java.io.FileWriter;
import java.util.Date;

import org.springframework.batch.core.annotation.OnSkipInProcess;
import org.springframework.batch.core.annotation.OnSkipInRead;
import org.springframework.batch.item.file.FlatFileParseException;
import org.springframework.stereotype.Component;

import com.infybuzz.model.StudentCsv;

@Component
public class SkipListener {
	
	@OnSkipInRead
	public void skipInRead(Throwable th) {
		if (th instanceof FlatFileParseException) {
			createFile("C:\\Users\\kuei\\Desktop\\github\\spring-batch\\spring-batch\\Chunk Job\\First Chunk Step\\reader\\SkipInRead.txt", 
					((FlatFileParseException) th).getInput());
		}
	}
	
	@OnSkipInProcess
	public void skipInProcess(StudentCsv studentCsv, Throwable th) {
		createFile("C:\\Users\\kuei\\Desktop\\github\\spring-batch\\spring-batch\\Chunk Job\\First Chunk Step\\processer\\SkipInProcess.txt", 
				studentCsv.toString());
	}
	
	public void createFile(String filePath, String data) {
		try (FileWriter fileWriter = new FileWriter(new File(filePath), true)) {
			fileWriter.write(data + "," + new Date() + "\n");
		} catch (Exception e) {
			
		}
	}

}












