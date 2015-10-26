/****************************************
______________                ______________
______________ \  /\  /|\  /| ______________
______________  \/  \/ | \/ | ______________
--Module Name:  image_file_package_tb.sv
--Project Name: GitHub
--Data modified: 2015-10-26 12:28:12 +0800
--author:Young-吴明
--E-mail: wmy367@Gmail.com
****************************************/
`timescale 1ns/1ps
module image_file_package_tb;

import ImageFilePkg::*;

ImageFileClass afile	= new("D:/work/github/file-class-package/tmp.txt");

int line [$];

initial begin
    $display("%s",afile.path);
    
    
    afile.read_file_curr_line(line);		//第一行
    $stop;
    afile.read_file_curr_line(line);		//第二行 
    $stop;
    
    
    
    afile.close_image_file;
    
    
    $display("-------->> %d",line.size());
end

endmodule

always@(posedge de)
	afile.read_file_curr_line(line);
	
	
always@(posedge pclk)
	data	<= line[II];
	___________________________
___/                           \_______
   DATAn-------------------DATAn
	

