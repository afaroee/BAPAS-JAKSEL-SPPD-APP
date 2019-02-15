<?php
include("../config/func.php");
$vaReturn = array();

$dbData = $bapasDB->GetData("tb_pegawai");
while($dbRow = $bapasDB->GetRow($dbData)) {
	//$vaReturn[] = $dbRow;
	//echo json_encode($vaReturn);
echo ("
		<tr>
			<td>".$dbRow['id']."</td>
		    <td>".$dbRow['nama']."</td>
		    <td>".$dbRow['nip']."</td>
			<td>".$dbRow['jabatan']."</td>
		</tr>

	");
}
?>