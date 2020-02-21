## Github sayfama hoşgeldiniz.Çay,kahve ne alırsınız ? 

Bu github page'i öğrenmek adına açılmıştır ama açtıysam bari bi şeyler ekliyim ilerde işime yarar.

### Problemin açıklaması

Programı son adımdan itibaren yazarak çarpımın matrix_mult adlı bir fonksiyonda yazılmasını sağlayın. İşlev aşağıdaki forma sahip olmalıdır:

void matrix_mult (int * A, int ar, int as, int * B, int br, int bs, int * E, int er, int es);

Burada * A, ilk dizinin pointer'ı
ar: ilk dizideki satır sayısı
as: ilk dizideki sütun sayısı

Burada * B, ikinci dizinin pointer'ı
br: ikinci dizideki satır sayısı
bs: ikinci dizideki sütun sayısı

Burada * E, sonuç dizisinin pointer'ı
er: sonuç dizisindeki satır sayısı
es: sonuç dizisindeki sütun sayısı





```markdown

#include <iostream>
using namespace std;

void matrix_mult (int *A, int ar, int as, int *B, int br, int bs, int *E, int er, int es){
    
         
    
    int sum = 0;
    for (int i = 0; i<ar; i++){
        for (int k = 0; k<bs; k++){
            for (int j = 0; j<as; j++){
                sum = sum + *(A + (i * as + j))* (*(B + (j * bs + k))); // hiermit k?nnen wir werte in den richtigen Array_elemente speichern   
                }
                *(E+(i* es + k))=sum ; // hiermit speichern wir die neu gestandene Array 
                sum = 0; // um in der neue Zeile neue werte speichern zu k?nnen
                }
            }
    
    
    for (int i = 0; i<ar; i++){
        for (int k = 0; k<as; k++){
            cout << *(E+(i* es + k));
            if (k<es-1){
                    cout << " ";
            }
        }
    cout << endl;
    }
    
     
}

int main(int argc, char **argv)
{
     int a,b,c,d;
    cin >> a >> b >> c >> d;
    
    if (b != c){ // Das eliminiert die Arrays ,die nicht multipliziert werden k?nnen 
         cout << "falsche eingabe" << endl; 
         return 0;
    }
    
    
    int uberprufer=0;
    int a1[a][b], a2[c][d];
    
    for (int i = 0; i<a; i++){
        for (int j = 0; j<b; j++){
            uberprufer = scanf("%d",&a1[i][j]); // man kann mit scanf ¸berprufen ,ob die Eingabe g¸ltig ist.
            if (uberprufer==0){
                cout << "falsche eingabe" << endl;
                    return 0;
                }
            }
        }
    
    uberprufer=0;
    
    for (int i = 0; i<c; i++){
        for (int j = 0; j<d; j++){
            uberprufer = scanf("%d",&a2[i][j]); // man kann mit scanf ¸berprufen ,ob die Eingabe g¸ltig ist.
            if (uberprufer==0){
                cout << "falsche eingabe" << endl;
                    return 0;
                }
            }
        }
        
        int a3[a][b]={0};
    
        
        
        matrix_mult(&a1[0][0],a,b,&a2[0][0],c,d,&a3[0][0],a,b);
    
	return 0;
}

```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### İletişim

Bana mail atmak için [buraya tiklayabilirsiniz](mailto:umut@limebudgie.com)
