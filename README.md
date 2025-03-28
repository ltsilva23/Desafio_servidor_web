# Script de Configuração de Servidor e Implantação de Aplicação

Este script automatiza o processo de atualização de um servidor Linux, instalação de pacotes necessários e configuração de uma aplicação web.

## Funcionalidades

- Atualiza os pacotes disponíveis e instalados no servidor.
- Instala o servidor web Apache2.
- Instala a ferramenta `unzip` para extração de arquivos `.zip`.
- Baixa a aplicação disponível em um repositório GitHub.
- Copia os arquivos extraídos para o diretório padrão do Apache.

## Pré-requisitos

- Permissões administrativas: Certifique-se de executar o script como root ou usar `sudo` antes de cada comando.
- Conexão com a internet: Necessária para baixar pacotes e a aplicação do GitHub.
- Dependências básicas, como `wget` e `unzip`, serão instaladas automaticamente pelo script.

## Uso

1. Faça o download do script ou copie seu conteúdo.
2. Dê permissão de execução ao script:
   ```bash
   chmod +x script_servidor_web.sh
   ```
3. Execute o script com:
   ```bash
   sudo ./script_servidor_web.sh
   ```

## Etapas executadas pelo script

1. **Atualizar pacotes disponíveis**:
   - Sincroniza a lista de pacotes disponíveis nos repositórios.
   ```bash
   apt update
   ```

2. **Atualizar pacotes instalados**:
   - Atualiza os pacotes instalados para as versões mais recentes.
   ```bash
   apt upgrade -y
   ```

3. **Instalar o Apache2**:
   - Configura o servidor web.
   ```bash
   apt install apache2 -y
   ```

4. **Instalar o unzip**:
   - Ferramenta necessária para extrair arquivos `.zip`.
   ```bash
   apt install unzip -y
   ```

5. **Baixar a aplicação no diretório `/tmp`**:
   - Utiliza o comando `wget` para baixar os arquivos do repositório do GitHub.
   ```bash
   wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
   ```

6. **Extrair os arquivos**:
   - Usa o `unzip` para extrair o arquivo baixado.
   ```bash
   unzip /tmp/main.zip -d /tmp/
   ```

7. **Copiar os arquivos para o diretório padrão do Apache**:
   - Move os arquivos extraídos para o diretório `/var/www/html/`.
   ```bash
   cp -R /tmp/linux-site-dio-main/* /var/www/html/
   ```

8. **Exibe uma mensagem de conclusão**:
   - Informa o término do processo com sucesso.

## Autor

Criado por **Larissa Thalia** 😊

---

Caso tenha dúvidas ou melhorias para este script, sinta-se à vontade para ajustar conforme necessário!
