/**
 * Confirmação de exclusão de um contato
 * @author Andre de Camargo
 * @oaram idcon
*/

function confirmar(idcon){
	
	let resposta = confirm("Confirma a exclusão deste contato ?")
	if (resposta === true){
	
		window.location.href = "delete?idcon=" + idcon
	}
	
}