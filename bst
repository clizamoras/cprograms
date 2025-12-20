
#include <stdio.h>
#include<stdlib.h>
struct BST{
    int data;
    struct BST *left , *right;
};
typedef struct BST NODE;
NODE*Createtree(NODE*node,int data){
    if(node==NULL){
        NODE*temp=(NODE*)malloc(sizeof(NODE));
        temp->data=data;
        temp->left=temp->right=NULL;
        return temp;
    }
    if(data<node->data){
        node->left=Createtree(node->left,data);
    }
    else if(data>node->data){
        node->right=Createtree(node->right,data);
    }
    else{
        printf("dublicate");
}
        return node;
    
}
NODE*Search(NODE*node, int data){
    if(node==NULL){
        printf("data not there");
    }
    else if(data<node->data){
        node->left=Search(node->left,data);
    }
    else if(data>node->data){
        node->right=Search(node->right,data);
    }
    else{
        printf("data found");
    }
    return node;
}
 void inorder(NODE*node){
     if(node!=NULL){
         inorder(node->left);
         printf("%d",node->data);
         inorder(node->right);
     }
}
 void preorder(NODE*node){
     if(node!=NULL){
         printf("%d",node->data);
         preorder(node->left);
         
         preorder(node->right);
     }
}
 void postorder(NODE*node){
     if(node!=NULL){
         
         postorder(node->left);
         
         postorder(node->right);
         printf("%d",node->data);
    }
}
int main(){
    int n;
   int arr[20];
   int ch;
    NODE *root=NULL;
    while(1){
    printf("1.create 2.search 3.inorder 4.pre  5. post 6. exit");
    printf("enter your choice");
    scanf("%d",&ch);
    switch(ch){
        case 1: printf("n");
                scanf("%d",&n);
                for(int i=0;i<n;i++){
                    scanf("%d",&arr[i]);
                    root=Createtree(root,arr[i]);
                }
                break;
        case 2:printf("Enter the value");
               scanf("%d",&a);
               root=Search(root,a);
               break;
        case 3:inorder(root);
               break;
        case 4: preorder(root);
               break;
        case 5: postorder(root);
               break;
        case 6: exit(0);
        default;printf("invalid");
    }
 }
    return 0;
}
