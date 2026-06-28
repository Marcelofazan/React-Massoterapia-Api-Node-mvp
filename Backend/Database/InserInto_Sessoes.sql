INSERT INTO public.sessoes (paciente_id, data, observacao, valor, in_pago, created_at, updated_at)
WITH listagem_pacientes AS (
    SELECT paciente_id, ROW_NUMBER() OVER (ORDER BY paciente_id) as rn
    FROM public.pacientes
    LIMIT 100
),
semanas AS (
    SELECT 1 AS num_semana, 7 AS dias_adicionais UNION ALL
    SELECT 2, 14 UNION ALL
    SELECT 3, 21 UNION ALL
    SELECT 4, 28
)
SELECT 
    p.paciente_id,
    -- Data inicial fixa em 01/06/2026 somando as semanas (7, 14, 21, 28 dias) mais variação de horário
    ('2026-06-01 08:00:00'::timestamp + (s.dias_adicionais || ' days')::interval + (floor(random() * 9) || ' hours')::interval) AS data,
    -- Alterna aleatoriamente as observações/descrições
    CASE 
        WHEN (p.rn + s.num_semana) % 2 = 0 THEN 'Sessão de Massoterapia Relaxante'
        ELSE 'Sessão de Acupuntura Tradicional Chinesa'
    END AS observacao,
    -- Define valores coerentes com cada tipo de serviço
    CASE 
        WHEN (p.rn + s.num_semana) % 2 = 0 THEN 120.00
        ELSE 150.00
    END AS valor,
    -- Define status de pagamento aleatório (true ou false)
    (random() > 0.3) AS in_pago,
    NOW() AS created_at,
    NOW() AS updated_at
FROM listagem_pacientes p
CROSS JOIN semanas s
ORDER BY p.paciente_id, s.num_semana;
