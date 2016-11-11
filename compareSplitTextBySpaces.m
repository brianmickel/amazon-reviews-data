splitTic = tic;
[ a ] = splitTextBySpaces(Text);
splitToc = toc(splitTic);

fasterSplitTic = tic;
[ b ] = fasterSplitTextBySpaces(Text);
fasterSplitToc = toc(fasterSplitTic);

times = [splitToc, fasterSplitToc]