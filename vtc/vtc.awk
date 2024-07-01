#!/usr/bin/awk -f

BEGIN {
        FS = "[\t\"]"
}

{
        chr = $1; gene = $10; id = chr "\t" gene;
	
	if (!(id in start)) {
		start[id] = $4;
                end[id] = $5;
	} else { 
		if ($4 < start[id]) {
			start[id] = $4;
        	} 
		
		if ($5 > end[id]) {
                	end[id] = $5;
		}
        }

	record[id] = chr "\t" start[id] "\t" end[id] "\t" gene;
} 
END {
	for (i in record) {
		print record[i];
	}
}


