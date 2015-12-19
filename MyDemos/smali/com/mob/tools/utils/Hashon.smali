.class public Lcom/mob/tools/utils/Hashon;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private arrayToList(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 16
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    move-object/from16 v0, p1

    instance-of v15, v0, [B

    if-eqz v15, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    check-cast p1, [B

    .end local p1    # "value":Ljava/lang/Object;
    move-object/from16 v1, p1

    check-cast v1, [B

    .local v1, "arr$":[B
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-byte v3, v1, v2

    .local v3, "item":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "arr$":[B
    .end local v2    # "i$":I
    .end local v3    # "item":B
    .end local v5    # "len$":I
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p1

    instance-of v15, v0, [S

    if-eqz v15, :cond_3

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    check-cast p1, [S

    .end local p1    # "value":Ljava/lang/Object;
    move-object/from16 v1, p1

    check-cast v1, [S

    .local v1, "arr$":[S
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-short v3, v1, v2

    .local v3, "item":S
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "item":S
    :cond_1
    move-object v7, v13

    .end local v1    # "arr$":[S
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    :cond_2
    :goto_2
    return-object v7

    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p1

    instance-of v15, v0, [I

    if-eqz v15, :cond_5

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast p1, [I

    .end local p1    # "value":Ljava/lang/Object;
    move-object/from16 v1, p1

    check-cast v1, [I

    .local v1, "arr$":[I
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v5, :cond_4

    aget v3, v1, v2

    .local v3, "item":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v3    # "item":I
    :cond_4
    move-object v7, v11

    goto :goto_2

    .end local v1    # "arr$":[I
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p1

    instance-of v15, v0, [J

    if-eqz v15, :cond_7

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p1, [J

    .end local p1    # "value":Ljava/lang/Object;
    move-object/from16 v1, p1

    check-cast v1, [J

    .local v1, "arr$":[J
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_4
    if-ge v2, v5, :cond_6

    aget-wide v3, v1, v2

    .local v3, "item":J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v3    # "item":J
    :cond_6
    move-object v7, v12

    goto :goto_2

    .end local v1    # "arr$":[J
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p1

    instance-of v15, v0, [F

    if-eqz v15, :cond_9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    check-cast p1, [F

    .end local p1    # "value":Ljava/lang/Object;
    move-object/from16 v1, p1

    check-cast v1, [F

    .local v1, "arr$":[F
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_5
    if-ge v2, v5, :cond_8

    aget v3, v1, v2

    .local v3, "item":F
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v3    # "item":F
    :cond_8
    move-object v7, v10

    goto :goto_2

    .end local v1    # "arr$":[F
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p1

    instance-of v15, v0, [D

    if-eqz v15, :cond_b

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    check-cast p1, [D

    .end local p1    # "value":Ljava/lang/Object;
    move-object/from16 v1, p1

    check-cast v1, [D

    .local v1, "arr$":[D
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_6
    if-ge v2, v5, :cond_a

    aget-wide v3, v1, v2

    .local v3, "item":D
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .end local v3    # "item":D
    :cond_a
    move-object v7, v9

    goto/16 :goto_2

    .end local v1    # "arr$":[D
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p1

    instance-of v15, v0, [C

    if-eqz v15, :cond_d

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Character;>;"
    check-cast p1, [C

    .end local p1    # "value":Ljava/lang/Object;
    move-object/from16 v1, p1

    check-cast v1, [C

    .local v1, "arr$":[C
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_7
    if-ge v2, v5, :cond_c

    aget-char v3, v1, v2

    .local v3, "item":C
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .end local v3    # "item":C
    :cond_c
    move-object v7, v8

    goto/16 :goto_2

    .end local v1    # "arr$":[C
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Character;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, p1

    instance-of v15, v0, [Z

    if-eqz v15, :cond_f

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    check-cast p1, [Z

    .end local p1    # "value":Ljava/lang/Object;
    move-object/from16 v1, p1

    check-cast v1, [Z

    .local v1, "arr$":[Z
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_8
    if-ge v2, v5, :cond_e

    aget-boolean v3, v1, v2

    .local v3, "item":Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .end local v3    # "item":Z
    :cond_e
    move-object v7, v6

    goto/16 :goto_2

    .end local v1    # "arr$":[Z
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_f
    move-object/from16 v0, p1

    instance-of v15, v0, [Ljava/lang/String;

    if-eqz v15, :cond_11

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    move-object/from16 v1, p1

    check-cast v1, [Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_9
    if-ge v2, v5, :cond_10

    aget-object v3, v1, v2

    .local v3, "item":Ljava/lang/String;
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .end local v3    # "item":Ljava/lang/String;
    :cond_10
    move-object v7, v14

    goto/16 :goto_2

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_2
.end method

.method private format(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .param p1, "sepStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v7, 0x22

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string v5, "[\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "mySepStr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "value":Ljava/lang/Object;
    if-lez v0, :cond_0

    const-string v5, ",\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v5, v4, Ljava/util/HashMap;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/util/HashMap;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2, v4}, Lcom/mob/tools/utils/Hashon;->format(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/util/ArrayList;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2, v4}, Lcom/mob/tools/utils/Hashon;->format(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .end local v4    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private format(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 9
    .param p1, "sepStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v8, 0x22

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string v6, "{\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "mySepStr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-lez v1, :cond_0

    const-string v6, ",\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/HashMap;

    if-eqz v6, :cond_1

    check-cast v5, Ljava/util/HashMap;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3, v5}, Lcom/mob/tools/utils/Hashon;->format(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v6, v5, Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    check-cast v5, Ljava/util/ArrayList;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3, v5}, Lcom/mob/tools/utils/Hashon;->format(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .restart local v5    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_3

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x7d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private fromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/json/JSONArray;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "value":Ljava/util/ArrayList;
    goto :goto_1

    .end local v3    # "value":Ljava/util/ArrayList;
    :cond_2
    return-object v1
.end method

.method private fromJson(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iKey":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "value":Ljava/lang/Object;
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    if-eqz v3, :cond_0

    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    check-cast v3, Lorg/json/JSONArray;

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "value":Ljava/util/ArrayList;
    goto :goto_1

    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/util/ArrayList;
    :cond_4
    return-object v2
.end method

.method private getJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/HashMap;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/util/HashMap;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/mob/tools/utils/Hashon;->getJSONObject(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/util/ArrayList;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/mob/tools/utils/Hashon;->getJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    .local v2, "value":Lorg/json/JSONArray;
    goto :goto_1

    .end local v2    # "value":Lorg/json/JSONArray;
    :cond_2
    return-object v0
.end method

.method private getJSONObject(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/HashMap;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/util/HashMap;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/mob/tools/utils/Hashon;->getJSONObject(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/util/ArrayList;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/mob/tools/utils/Hashon;->getJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v3

    .local v3, "value":Lorg/json/JSONArray;
    goto :goto_1

    .local v3, "value":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v3}, Lcom/mob/tools/utils/Hashon;->isBasicArray(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/Hashon;->arrayToList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mob/tools/utils/Hashon;->getJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v3

    .local v3, "value":Lorg/json/JSONArray;
    goto :goto_1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "value":Lorg/json/JSONArray;
    :cond_3
    return-object v2
.end method

.method private isBasicArray(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    instance-of v0, p1, [S

    if-nez v0, :cond_0

    instance-of v0, p1, [I

    if-nez v0, :cond_0

    instance-of v0, p1, [J

    if-nez v0, :cond_0

    instance-of v0, p1, [F

    if-nez v0, :cond_0

    instance-of v0, p1, [D

    if-nez v0, :cond_0

    instance-of v0, p1, [C

    if-nez v0, :cond_0

    instance-of v0, p1, [Z

    if-nez v0, :cond_0

    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    :try_start_0
    const-string v1, ""

    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mob/tools/utils/Hashon;->format(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const-string v1, ""

    goto :goto_0
.end method

.method public fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/Hashon;->getJSONObject(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v0

    .local v0, "obj":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    const-string v2, ""

    .end local v0    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .restart local v0    # "obj":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v0    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const-string v2, ""

    goto :goto_0
.end method

.method public fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/mob/tools/utils/JsonValidator;

    invoke-direct {v2}, Lcom/mob/tools/utils/JsonValidator;-><init>()V

    invoke-virtual {v2, p1}, Lcom/mob/tools/utils/JsonValidator;->validate(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"fakelist\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v0, "json":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Lorg/json/JSONObject;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v0    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method
