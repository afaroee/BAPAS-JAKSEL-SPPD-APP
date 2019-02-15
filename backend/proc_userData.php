<?php
include("../config/func.php");
$vaReturn = array();

$dbData = $bapasDB->GetData("tb_user");
while($dbRow = $bapasDB->GetRow($dbData)) {
	//$vaReturn[] = $dbRow;
	//echo json_encode($vaReturn);
echo ("
		<tr>
			<td>".$dbRow['username']."</td>
		    <td>".$dbRow['fullname']."</td>
		</tr>

	");
}
?>