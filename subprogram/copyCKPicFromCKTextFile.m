% mydir = 'C:\Users\Administrator\Desktop\ExpressionRecognition\CK数据集记录\1\';
% % picDir = '';
% DIRS = dir([mydir,'*.txt']); % DIRS(i).name是完整文件名 S010_004_00000019.txt
% % 取出后缀名
% for i = 1 : 44
% %     str = [mydir,DIRS(i).name];
% %     img = imread(str);               
%     DIRS(i).name = DIRS(i).name(1:end-4);
%     DIRS(i).name = [DIRS(i).name,'.png'];
% end

%遍历图片文件夹，复制图片
imgDataPath = 'E:\人脸识别研究\表情识别\表情人脸库\Cohn–Kanade facial expression database\CK+\cohn-kanade-images\';
imgDataDir  = dir(imgDataPath);             % 遍历所有文件
% 
% for k=1:44
    for i = 1:length(imgDataDir)
        if(isequal(imgDataDir(i).name,'.')||... % 去除系统自带的两个隐文件夹
           isequal(imgDataDir(i).name,'..')||...
           ~imgDataDir(i).isdir)                % 去除遍历中不是文件夹的
               continue;
        end
        tempDir1 = dir([imgDataPath,imgDataDir(i).name]);
        
        for j=1:length(tempDir1)
%             imgDir = dir([imgDataPath,imgDataDir(j).name]);
            if(isequal(tempDir1(j).name,'.')||... % 去除系统自带的两个隐文件夹
                    isequal(tempDir1(j).name,'..')||...
                    ~tempDir1(j).isdir)                % 去除遍历中不是文件夹的
                    continue;
                end
            imgDir = dir([imgDataPath,imgDataDir(i).name,tempDir1(j).name]);
            for k=1:length(imgDir)
                if(isequal(imgDir(k).name,'.')||... % 去除系统自带的两个隐文件夹
                    isequal(imgDir(k).name,'..')||...
                    ~imgDir(k).isdir)                % 去除遍历中不是文件夹的
                    continue;
                end
                img = dir([imgDataPath,imgDataDir(i).name,tempDir1(j).name,imgDir(k)]);
                
            end
%             for k=1:length(imgDir)
%                 
%             end
%             iDir = dir([imgDataPath,imgDataDir(j).name],imgDir);
%             for j =1:length(imgDir)                 % 遍历所有图片
%                 img = imread([imgDataPath imgDataDir(i).name '/' imgDir(j).name]);
%                 imshow(img);
%             end
        end       
%         imgDir = dir([tempDir,'*.png']); 
       
    end

% 
% end
