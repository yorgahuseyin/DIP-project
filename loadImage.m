function loadImage(~, ~, ImgFrm)
    [filename, filepath] = uigetfile({'*.jpg;*.jpeg;*.png;*.gif', ...
        'Image Files'}, 'Select an image');
    if filename ~= 0
        fullpath = fullfile(filepath, filename);
        img = imread(fullpath);
        imshow(img, 'Parent', ImgFrm);
    else
        disp('No file selected.');
    end
