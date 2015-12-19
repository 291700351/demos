.class public Lcom/mob/tools/utils/JsonValidator;
.super Ljava/lang/Object;


# instance fields
.field private c:C

.field private col:I

.field private it:Ljava/text/CharacterIterator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aggregate(CCZ)Z
    .locals 4
    .param p1, "entryCharacter"    # C
    .param p2, "exitCharacter"    # C
    .param p3, "prefix"    # Z

    .prologue
    const/4 v1, 0x1

    iget-char v2, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    if-eq v2, p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->skipWhiteSpace()V

    iget-char v2, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    if-ne v2, p2, :cond_3

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    goto :goto_0

    .local v0, "start":I
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->skipWhiteSpace()V

    .end local v0    # "start":I
    :cond_2
    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->value()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->skipWhiteSpace()V

    iget-char v2, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_5

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->skipWhiteSpace()V

    :cond_3
    if-eqz p3, :cond_2

    iget v0, p0, Lcom/mob/tools/utils/JsonValidator;->col:I

    .restart local v0    # "start":I
    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->string()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "string"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/utils/JsonValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->skipWhiteSpace()V

    iget-char v2, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1

    const-string v1, "colon"

    iget v2, p0, Lcom/mob/tools/utils/JsonValidator;->col:I

    invoke-direct {p0, v1, v2}, Lcom/mob/tools/utils/JsonValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .end local v0    # "start":I
    :cond_5
    iget-char v2, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    if-ne v2, p2, :cond_6

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "comma or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mob/tools/utils/JsonValidator;->col:I

    invoke-direct {p0, v1, v2}, Lcom/mob/tools/utils/JsonValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    :cond_7
    const-string v1, "value"

    iget v2, p0, Lcom/mob/tools/utils/JsonValidator;->col:I

    invoke-direct {p0, v1, v2}, Lcom/mob/tools/utils/JsonValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0
.end method

.method private array()Z
    .locals 3

    .prologue
    const/16 v0, 0x5b

    const/16 v1, 0x5d

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mob/tools/utils/JsonValidator;->aggregate(CCZ)Z

    move-result v0

    return v0
.end method

.method private error(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "col"    # I

    .prologue
    const/4 v5, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "type: %s, col: %s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return v5
.end method

.method private escape()Z
    .locals 3

    .prologue
    iget v1, p0, Lcom/mob/tools/utils/JsonValidator;->col:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "start":I
    const-string v1, " \\\"/bfnrtu"

    iget-char v2, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const-string v1, "escape sequence  \\\",\\\\,\\/,\\b,\\f,\\n,\\r,\\t  or  \\uxxxx "

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/utils/JsonValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    const/16 v2, 0x75

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/mob/tools/utils/JsonValidator;->ishex(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/mob/tools/utils/JsonValidator;->ishex(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/mob/tools/utils/JsonValidator;->ishex(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/mob/tools/utils/JsonValidator;->ishex(C)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "unicode escape sequence  \\uxxxx "

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/utils/JsonValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private ishex(C)Z
    .locals 2
    .param p1, "d"    # C

    .prologue
    const-string v0, "0123456789abcdefABCDEF"

    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private literal(Ljava/lang/String;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .local v0, "ci":Ljava/text/CharacterIterator;
    invoke-interface {v0}, Ljava/text/CharacterIterator;->first()C

    move-result v3

    .local v3, "t":C
    iget-char v4, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    if-eq v4, v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/mob/tools/utils/JsonValidator;->col:I

    .local v2, "start":I
    const/4 v1, 0x1

    .local v1, "ret":Z
    invoke-interface {v0}, Ljava/text/CharacterIterator;->next()C

    move-result v3

    :goto_1
    const v4, 0xffff

    if-eq v3, v4, :cond_2

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    move-result v4

    if-eq v3, v4, :cond_3

    const/4 v1, 0x0

    :cond_2
    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "literal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/mob/tools/utils/JsonValidator;->error(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/text/CharacterIterator;->next()C

    move-result v3

    goto :goto_1
.end method

.method private nextCharacter()C
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/JsonValidator;->it:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    iput-char v0, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    iget v0, p0, Lcom/mob/tools/utils/JsonValidator;->col:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mob/tools/utils/JsonValidator;->col:I

    iget-char v0, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    return v0
.end method

.method private number()Z
    .locals 4

    .prologue
    const/16 v3, 0x2d

    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    if-eq v1, v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v0, p0, Lcom/mob/tools/utils/JsonValidator;->col:I

    .local v0, "start":I
    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    :cond_1
    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    const/16 v2, 0x30

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    :cond_2
    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_6

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    goto :goto_1

    :cond_3
    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    goto :goto_2

    :cond_4
    const-string v1, "number"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/utils/JsonValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    :cond_5
    const-string v1, "number"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/utils/JsonValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    :cond_6
    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    const/16 v2, 0x65

    if-eq v1, v2, :cond_7

    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    const/16 v2, 0x45

    if-ne v1, v2, :cond_b

    :cond_7
    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_8

    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    if-ne v1, v3, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    :cond_9
    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_3
    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    goto :goto_3

    :cond_a
    const-string v1, "number"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/utils/JsonValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private object()Z
    .locals 3

    .prologue
    const/16 v0, 0x7b

    const/16 v1, 0x7d

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mob/tools/utils/JsonValidator;->aggregate(CCZ)Z

    move-result v0

    return v0
.end method

.method private skipWhiteSpace()V
    .locals 1

    .prologue
    :goto_0
    iget-char v0, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    goto :goto_0

    :cond_0
    return-void
.end method

.method private string()Z
    .locals 6

    .prologue
    const/16 v5, 0x22

    const/4 v2, 0x0

    iget-char v3, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    if-eq v3, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v1, p0, Lcom/mob/tools/utils/JsonValidator;->col:I

    .local v1, "start":I
    const/4 v0, 0x0

    .local v0, "escaped":Z
    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    :goto_1
    iget-char v3, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    const v4, 0xffff

    if-eq v3, v4, :cond_5

    if-nez v0, :cond_3

    iget-char v3, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->escape()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    iget-char v3, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    if-ne v3, v5, :cond_2

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->nextCharacter()C

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const-string v2, "quoted string"

    invoke-direct {p0, v2, v1}, Lcom/mob/tools/utils/JsonValidator;->error(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method

.method private valid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    .local v0, "ret":Z
    new-instance v2, Ljava/text/StringCharacterIterator;

    invoke-direct {v2, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mob/tools/utils/JsonValidator;->it:Ljava/text/CharacterIterator;

    iget-object v2, p0, Lcom/mob/tools/utils/JsonValidator;->it:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->first()C

    move-result v2

    iput-char v2, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    iput v1, p0, Lcom/mob/tools/utils/JsonValidator;->col:I

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->value()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "value"

    invoke-direct {p0, v2, v1}, Lcom/mob/tools/utils/JsonValidator;->error(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->skipWhiteSpace()V

    iget-char v1, p0, Lcom/mob/tools/utils/JsonValidator;->c:C

    const v2, 0xffff

    if-eq v1, v2, :cond_0

    const-string v1, "end"

    iget v2, p0, Lcom/mob/tools/utils/JsonValidator;->col:I

    invoke-direct {p0, v1, v2}, Lcom/mob/tools/utils/JsonValidator;->error(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method private value()Z
    .locals 1

    .prologue
    const-string v0, "true"

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/JsonValidator;->literal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/JsonValidator;->literal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/JsonValidator;->literal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->string()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->number()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->object()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mob/tools/utils/JsonValidator;->array()Z

    move-result v0

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
.method public validate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/JsonValidator;->valid(Ljava/lang/String;)Z

    move-result v0

    .local v0, "ret":Z
    return v0
.end method
