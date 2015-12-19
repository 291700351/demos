.class Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB$1;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->open()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p5, "x3"    # I

    .prologue
    iput-object p1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB$1;->this$0:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v8, "create table  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB$1;->this$0:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    # getter for: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->name:Ljava/lang/String;
    invoke-static {v9}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$600(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB$1;->this$0:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    # getter for: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldTypes:Ljava/util/LinkedHashMap;
    invoke-static {v8}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$700(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "field":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "type":Ljava/lang/String;
    iget-object v8, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB$1;->this$0:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    # getter for: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldLimits:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$800(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .local v4, "notNull":Z
    iget-object v8, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB$1;->this$0:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    # getter for: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->primary:Ljava/lang/String;
    invoke-static {v8}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$900(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "primary":Z
    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB$1;->this$0:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    # getter for: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->primaryAutoincrement:Z
    invoke-static {v8}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$1000(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Z

    move-result v0

    .local v0, "autoincrement":Z
    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1

    const-string v8, " not null"

    :goto_2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_2

    const-string v8, " primary key"

    :goto_3
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const-string v8, " autoincrement,"

    :goto_4
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0    # "autoincrement":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "autoincrement":Z
    :cond_1
    const-string v8, ""

    goto :goto_2

    :cond_2
    const-string v8, ""

    goto :goto_3

    :cond_3
    const-string v8, ","

    goto :goto_4

    .end local v0    # "autoincrement":Z
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "field":Ljava/lang/String;
    .end local v4    # "notNull":Z
    .end local v5    # "primary":Z
    .end local v7    # "type":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const-string v10, ");"

    invoke-virtual {v6, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    return-void
.end method
