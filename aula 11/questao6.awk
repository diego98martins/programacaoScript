{
	acc=0
	for( i=1; i<=NF; i++ )
	{
		if( $i ~ /[0-9]+/ ) acc = acc+$i;
	}

	if( acc/3.0 >= 70 )
	{
		for( j=1; j<=NF; j++ )
		{
			if( $j ~ /[^0-9]+/ ) printf $j" ";
		}
		printf "\n";
	}
}
