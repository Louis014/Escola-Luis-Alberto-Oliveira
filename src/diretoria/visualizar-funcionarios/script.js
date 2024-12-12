const excluir_func = document.querySelector("excluir-func");

if (excluir_func) {
  excluir_func.addEventListener("submit", async (e) => {
    e.preventDefault();

    const dadosForm = new FormData(excluir_func);

    const id_func = dadosForm.get("id_func");
    
    try {
      const dados = await fetch("../backend/excluir-funcionario.php", {
        method: "POST",
        body: dadosForm,
      });

      const resposta = await dados.json();

      Swal.fire({
        text: resposta["msg"],
        icon: resposta["status"] ? "success" : "error",
        confirmButtonColor: "#3085d6",
        confirmButtonText: "Fechar",
      }).then(() => {
        window.location('../visualizar-funcionarios/');
      });
    } catch (error) {
      Swal.fire({
        text: "Erro ao processar. Tente novamente mais tarde.",
        icon: "error",
        confirmButtonColor: "#3085d6",
        confirmButtonText: "Fechar",
      });
    }
  });
}
