class TreeNode {
    constructor(value) {
        this.value = value;
        this.left = null;
        this.right = null;
        this.color = "#90EE90"; // Color por defecto
    }
}

class BinarySearchTree {
    constructor() {
        this.root = null;
    }

    async insert(value) {
        this.clearColors(this.root); // Limpiar colores anteriores
        const newNode = new TreeNode(value);
        if (this.root === null) {
            newNode.color = "#0000FF"; // Colorear de azul el nuevo nodo
            this.root = newNode;
        } else {
            await this.insertNode(this.root, newNode);
        }   
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        this.draw(ctx, this.root, canvas.width / 2, 50, canvas.width / 4, 50);
    }

    async insertNode(node, newNode) {
        node.color = "#FFFF00"; // Colorear de amarillo el camino
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        this.draw(ctx, this.root, canvas.width / 2, 50, canvas.width / 4, 50);
        await this.sleep(500);
        if (newNode.value < node.value) {
            if (node.left === null) {
                newNode.color = "#0000FF"; // Colorear de azul el nuevo nodo
                node.left = newNode;
            } else {
                await this.insertNode(node.left, newNode);
            }
        } else {
            if (node.right === null) {
                newNode.color = "#0000FF"; // Colorear de azul el nuevo nodo
                node.right = newNode;
            } else {
                await this.insertNode(node.right, newNode);
            }
        }
    }

    async delete(value) {
        this.clearColors(this.root); // Limpiar colores anteriores
        this.root = await this.deleteNode(this.root, value);
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        this.draw(ctx, this.root, canvas.width / 2, 50, canvas.width / 4, 50);
    }

    async deleteNode(node, value) {
        if (node === null) {
            return null;
        }
        node.color = "#FFFF00"; // Colorear de amarillo el camino
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        this.draw(ctx, this.root, canvas.width / 2, 50, canvas.width / 4, 50);
        await this.sleep(500);
        if (value < node.value) {
            node.left = await this.deleteNode(node.left, value);
            return node;
        } else if (value > node.value) {
            node.right = await this.deleteNode(node.right, value);
            return node;
        } else {
            node.color = "#FF0000"; // Colorear de rojo el nodo a eliminar
            ctx.clearRect(0, 0, canvas.width, canvas.height);
            this.draw(ctx, this.root, canvas.width / 2, 50, canvas.width / 4, 50);
            await this.sleep(500);
            if (node.left === null && node.right === null) {
                return null;
            }
            if (node.left === null) {
                return node.right;
            }
            if (node.right === null) {
                return node.left;
            }
            const minNode = this.findMinNode(node.right);
            node.value = minNode.value;
            node.right = await this.deleteNode(node.right, minNode.value);
            return node;
        }
    }

    findMinNode(node) {
        while (node.left !== null) {
            node = node.left;
        }
        return node;
    }

    async find(value) {
        this.clearColors(this.root); // Limpiar colores anteriores
        const node = await this.findNode(this.root, value);
        if (node) {
        } else {
            alert('Node not found');
        }
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        this.draw(ctx, this.root, canvas.width / 2, 50, canvas.width / 4, 50);
    }

    async findNode(node, value) {
        if (node === null) {
            return null;
        }
        node.color = "#FFFF00"; // Colorear de amarillo el camino
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        this.draw(ctx, this.root, canvas.width / 2, 50, canvas.width / 4, 50);
        await this.sleep(500);
        if (value < node.value) {
            return await this.findNode(node.left, value);
        } else if (value > node.value) {
            return await this.findNode(node.right, value);
        } else {
            node.color = "#00FF00"; // Colorear de verde el nodo encontrado
            ctx.clearRect(0, 0, canvas.width, canvas.height);
            this.draw(ctx, this.root, canvas.width / 2, 50, canvas.width / 4, 50);
            return node;
        }
    }

    clearColors(node) {
        if (node !== null) {
            node.color = "#90EE90"; // Color por defecto
            this.clearColors(node.left);
            this.clearColors(node.right);
        }
    }

    draw(ctx, node, x, y, dx, dy) {
        if (node === null) {
            return;
        }
        if (node.left !== null) {
            ctx.beginPath();
            ctx.moveTo(x, y);
            ctx.lineTo(x - dx, y + dy);
            ctx.stroke();
        }
        if (node.right !== null) {
            ctx.beginPath();
            ctx.moveTo(x, y);
            ctx.lineTo(x + dx, y + dy);
            ctx.stroke();
        }
        ctx.beginPath();
        ctx.arc(x, y, 20, 0, 2 * Math.PI);
        ctx.fillStyle = node.color;
        ctx.fill();
        ctx.stroke();
        ctx.fillStyle = '#000000';
        ctx.fillText(node.value, x - 5, y + 5);
        this.draw(ctx, node.left, x - dx, y + dy, dx / 1.5, dy);
        this.draw(ctx, node.right, x + dx, y + dy, dx / 1.5, dy);
    }

    sleep(ms) {
        return new Promise(resolve => setTimeout(resolve, ms));
    }
}

const bst = new BinarySearchTree();
const canvas = document.getElementById('bstCanvas');
const ctx = canvas.getContext('2d');

function insertNode() {
    const value = parseInt(document.getElementById('nodeValue').value);
    bst.insert(value);
}

function deleteNode() {
    const value = parseInt(document.getElementById('nodeValue').value);
    bst.delete(value);
}

function findNode() {
    const value = parseInt(document.getElementById('nodeValue').value);
    bst.find(value);
}
