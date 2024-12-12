const formcad = document.querySelector("#form-cad");

if (formcad) {
  formcad.addEventListener("submit", async (e) => {
    e.preventDefault();

    const dadosForm = new FormData(formcad);

    const nome = dadosForm.get("nome");
    const email = dadosForm.get("email-pessoal");
    const cpf = dadosForm.get("cpf");
    const sexo = dadosForm.get("sexo");
    const turma = dadosForm.get("turma");
    const nome_responsavel = dadosForm.get("nome-responsavel");
    const telefone_responsavel = dadosForm.get("telefone-responsavel");
    const parentesco_responsavel = dadosForm.get("parentesco-responsavel");
    const nome_responsavel2 = dadosForm.get("nome-responsavel2");
    const telefone_responsavel2 = dadosForm.get("telefone-responsavel2");
    const parentesco_responsavel2 = dadosForm.get("parentesco-responsavel2");

    if (
      !nome ||
      !email ||
      !cpf ||
      !sexo ||
      !turma ||
      !nome_responsavel ||
      !telefone_responsavel ||
      !parentesco_responsavel ||
      !nome_responsavel2 ||
      !telefone_responsavel2 ||
      !parentesco_responsavel2
    ) {
      Swal.fire({
        text: "Preencha todos os campos.",
        icon: "error",
        confirmButtonColor: "#3085d6",
        confirmButtonText: "Fechar",
      });
      return;
    }

    try {
      const dados = await fetch("../backend/cadastro-aluno.php", {
        method: "POST",
        body: dadosForm,
      });

      const resposta = await dados.json();

      Swal.fire({
        text: resposta["msg"],
        icon: resposta["status"] ? "success" : "error",
        confirmButtonColor: "#3085d6",
        confirmButtonText: "Fechar",
      });
    } catch (error) {
      Swal.fire({
        text: "Erro ao processar o cadastro. Tente novamente mais tarde.",
        icon: "error",
        confirmButtonColor: "#3085d6",
        confirmButtonText: "Fechar",
      });
    }
  });
}
